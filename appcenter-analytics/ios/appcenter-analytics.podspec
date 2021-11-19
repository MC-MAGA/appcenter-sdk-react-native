require 'json'

package = JSON.parse(File.read(File.join(__dir__, '../package.json')))

Pod::Spec.new do |s|
  s.name              = package['name']
  s.version           = package['version']
  s.summary           = package['description']
  s.license           = package['license']
  s.homepage          = package['homepage']
  s.documentation_url = "https://docs.microsoft.com/en-us/appcenter/"

  s.author            = { 'Microsoft' => 'appcentersdk@microsoft.com' }
  s.source            = { :git => "https://github.com/microsoft/appcenter-sdk-react-native.git" }
  s.source_files      = "AppCenterReactNativeAnalytics/**/*.{h,m}"
  s.platform          = :ios, '9.0'
  s.requires_arc      = true

  s.vendored_frameworks = 'AppCenterReactNativeShared/AppCenterReactNativeShared.framework'

  s.dependency 'AppCenterReactNativeShared', '~> 4.0'
  s.dependency 'AppCenter/Analytics', '4.3.1-17'
  s.dependency 'React-Core'
  s.static_framework = true
end
