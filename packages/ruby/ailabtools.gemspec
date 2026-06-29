# frozen_string_literal: true

require_relative "lib/ailabtools/version"

Gem::Specification.new do |spec|
  spec.name = "ailabtools"
  spec.version = AILabTools::VERSION
  spec.authors = ["AILabTools"]
  spec.email = ["support@ailabtools.com"]

  spec.summary = "Official Ruby SDK for AILabTools AI image APIs."
  spec.description = "Ruby SDK for AILabTools background removal, image enhancement, portrait editing, virtual try-on, and related AI image APIs."
  spec.homepage = "https://www.ailabtools.com/"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6"

  spec.metadata = {
    "homepage_uri" => "https://www.ailabtools.com/",
    "documentation_uri" => "https://www.ailabtools.com/docs",
    "source_code_uri" => "https://github.com/ailabtools/ailabtools-sdk",
    "bug_tracker_uri" => "https://github.com/ailabtools/ailabtools-sdk/issues"
  }

  spec.files = Dir.chdir(__dir__) do
    Dir["lib/**/*.rb", "README.md", "CHANGELOG.md", "LICENSE"]
  end
  spec.require_paths = ["lib"]
end
