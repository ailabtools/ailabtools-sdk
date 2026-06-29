# frozen_string_literal: true

module AILabTools
  class FileInput
    attr_reader :bytes, :filename, :content_type

    def initialize(bytes:, filename:, content_type: "application/octet-stream")
      raise ArgumentError, "filename must not be empty" if filename.nil? || filename.empty?

      @bytes = bytes.b
      @filename = filename
      @content_type = content_type
    end

    def self.from_path(path, content_type: "application/octet-stream")
      new(bytes: File.binread(path), filename: File.basename(path), content_type: content_type)
    end

    def self.from_bytes(bytes, filename:, content_type: "application/octet-stream")
      new(bytes: bytes, filename: filename, content_type: content_type)
    end

    def self.from_io(io, filename:, content_type: "application/octet-stream")
      new(bytes: io.read, filename: filename, content_type: content_type)
    end
  end
end
