Pod::Spec.new do |spec|
  spec.name = 'AILabTools'
  spec.version = '0.5.4'
  spec.summary = 'Official asynchronous Swift SDK for AILabTools AI image APIs.'
  spec.description = <<-DESC
    Strongly typed Swift SDK covering all AILabTools image, cutout, portrait,
    analysis, generation, and asynchronous task APIs.
  DESC
  spec.homepage = 'https://www.ailabtools.com/'
  spec.documentation_url = 'https://www.ailabtools.com/docs'
  spec.license = { :type => 'MIT', :file => 'LICENSE' }
  spec.author = { 'AILabTools' => 'support@ailabtools.com' }
  spec.source = {
    :git => 'https://github.com/ailabtools/ailabtools-sdk.git',
    :tag => spec.version.to_s
  }
  spec.source_files = 'packages/swift/Sources/AILabTools/**/*.swift'
  spec.swift_versions = ['5.8', '5.9', '5.10']
  spec.ios.deployment_target = '13.0'
  spec.osx.deployment_target = '10.15'
  spec.tvos.deployment_target = '13.0'
  spec.watchos.deployment_target = '6.0'
  spec.framework = 'Foundation'
end
