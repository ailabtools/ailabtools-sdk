# frozen_string_literal: true

require "json"
require "net/http"
require "securerandom"
require "uri"

module AILabTools
  class Requester
    def initialize(api_key:, base_url: "https://www.ailabapi.com", timeout: 120)
      raise ArgumentError, "AILabTools API key must not be empty" if api_key.nil? || api_key.empty?

      @api_key = api_key
      @base_url = base_url.sub(%r{/+\z}, "")
      @timeout = timeout
    end

    def request(method, path, params, response_class)
      uri = URI(@base_url + "/" + path.sub(%r{\A/+}, ""))
      query = params.query_fields
      uri.query = URI.encode_www_form(stringify_hash(query)) unless query.empty?

      http = Net::HTTP.new(uri.host, uri.port)
      http.use_ssl = uri.scheme == "https"
      http.open_timeout = @timeout
      http.read_timeout = @timeout
      http.write_timeout = @timeout if http.respond_to?(:write_timeout=)

      request = build_request(method, uri, params.body_fields)
      request["ailabapi-api-key"] = @api_key
      response = http.request(request)
      parse_response(response, response_class)
    rescue APIError
      raise
    rescue StandardError => e
      raise SDKError, "AILabTools request failed: #{e.message}"
    end

    private

    def build_request(method, uri, body_fields)
      if method.upcase == "GET"
        Net::HTTP::Get.new(uri)
      else
        request = Net::HTTP.const_get(method.capitalize).new(uri)
        request["Content-Type"] = "multipart/form-data; boundary=#{boundary}"
        request.body = multipart_body(body_fields)
        request
      end
    end

    def boundary
      @boundary ||= "----AILabTools-#{SecureRandom.hex(16)}"
    end

    def multipart_body(fields)
      parts = []
      fields.each do |name, value|
        parts << "--#{boundary}\r\n"
        if value.is_a?(FileInput)
          parts << "Content-Disposition: form-data; name=\"#{escape(name)}\"; filename=\"#{escape(value.filename)}\"\r\n"
          parts << "Content-Type: #{value.content_type}\r\n\r\n"
          parts << value.bytes
          parts << "\r\n"
        else
          parts << "Content-Disposition: form-data; name=\"#{escape(name)}\"\r\n\r\n"
          parts << stringify(value)
          parts << "\r\n"
        end
      end
      parts << "--#{boundary}--\r\n"
      parts.join.b
    end

    def parse_response(response, response_class)
      payload = JSON.parse(response.body || "{}")
      error_code = payload.fetch("error_code", 0)
      if response.code.to_i != 200 || error_code != 0
        detail = payload["error_detail"].is_a?(Hash) ? payload["error_detail"] : nil
        message = detail && detail["message"] || payload["error_msg"] || "AILabTools API Error"
        raise APIError.new(
          message,
          status_code: response.code.to_i,
          request_id: payload["request_id"],
          log_id: payload["log_id"],
          error_code: error_code,
          error_detail: detail,
          raw: payload
        )
      end
      response_class.from_hash(payload)
    rescue JSON::ParserError
      raise APIError.new("Invalid JSON response", status_code: response.code.to_i, raw: response.body)
    end

    def stringify_hash(hash)
      hash.each_with_object({}) { |(key, value), out| out[key] = stringify(value) }
    end

    def stringify(value)
      value.is_a?(Array) ? value.join(",") : value.to_s
    end

    def escape(value)
      value.to_s.gsub("\\", "\\\\").gsub('"', '\\"')
    end
  end
end
