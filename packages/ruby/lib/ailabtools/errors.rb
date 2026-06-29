# frozen_string_literal: true

module AILabTools
  class Error < StandardError; end

  class SDKError < Error; end

  class APIError < Error
    attr_reader :status_code, :request_id, :log_id, :error_code, :error_detail, :raw

    def initialize(message, status_code:, request_id: nil, log_id: nil, error_code: nil, error_detail: nil, raw: nil)
      super(message)
      @status_code = status_code
      @request_id = request_id
      @log_id = log_id
      @error_code = error_code
      @error_detail = error_detail
      @raw = raw
    end
  end
end
