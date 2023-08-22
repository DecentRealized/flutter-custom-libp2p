#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint custom_libp2p.podspec' to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'custom_libp2p'
  s.version          = '0.6.0'
  s.summary          = 'library for use Custom LibP2P.'
  s.description      = <<-DESC
  library for use Custom LibP2P.
                       DESC
  s.homepage         = 'https://github.com/DecentRealized/flutter-custom-libp2p'
  #s.license          = { :file => '../LICENSE' }
  s.author           = { 'DecentRealized' => 'decentrealized2@gmail.com' }
  s.source           = { :path => '.' }
  s.source_files     = 'Classes/**/*'
  s.dependency 'FlutterMacOS'
  s.platform = :osx, '10.11'
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
  s.swift_version = '5.0'
  #s.vendored_libraries  = 'libcustom_libp2p_bridge.dylib'
  s.resources = ['libcustom_libp2p_bridge.dylib']
  s.xcconfig = { 'LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks/custom_libp2p.framework/Resources' }
end
