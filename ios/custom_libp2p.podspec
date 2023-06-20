#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint custom_libp2p.podspec' to validate before publishing.
#
shared_lib = File.join(__dir__, "libcustom_libp2_bridge.a").gsub(/ /, '\ ')

Pod::Spec.new do |s|
  s.name             = 'custom_libp2'
  s.version          = '0.6.0'
  s.summary          = 'library for use Custom LibP2P.'
  s.description      = <<-DESC
library for use Custom LibP2P.
                       DESC
  s.homepage         = 'https://github.com/DecentRealized/flutter-custom-libp2p'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Gerson Alexander Pardo Gamez' => 'jeral17@gmail.com' }
  s.source           = { :path => '.' }
  s.source_files =  'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'
  s.vendored_libraries  = '*.a'
  s.dependency 'Flutter'
  s.platform = :ios, '8.0'
  s.xcconfig = { 'OTHER_LDFLAGS' => "-force_load '#{shared_lib}'"}
  # Flutter.framework does not contain a i386 slice. Only x86_64 simulators are supported.
  s.pod_target_xcconfig = {  'DEFINES_MODULE' => 'YES', 'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.swift_version = '5.0'

end
