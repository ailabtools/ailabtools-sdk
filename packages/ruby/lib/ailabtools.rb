# frozen_string_literal: true

require_relative "ailabtools/version"
require_relative "ailabtools/errors"
require_relative "ailabtools/file_input"
require_relative "ailabtools/params"
require_relative "ailabtools/response_model"
require_relative "ailabtools/requester"

Dir[File.join(__dir__, "ailabtools", "generated", "params", "*.rb")].sort.each { |file| require file }
Dir[File.join(__dir__, "ailabtools", "generated", "responses", "*.rb")].sort.each { |file| require file }
Dir[File.join(__dir__, "ailabtools", "api", "*.rb")].sort.each { |file| require file }

require_relative "ailabtools/client"

module AILabTools
  AILabClient = Client
end
