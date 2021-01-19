#
# Be sure to run `pod lib lint YHGestureUnlockSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'YHGestureUnlockSDK'
  s.version          = '1.1.2'
  s.summary          = 'YHGestureUnlockSDK,手势解锁'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'YHGestureUnlockSDK锁屏SDK，支持手势和指纹开锁'

  s.homepage         = 'https://github.com/jagtu/YHGestureUnlockSDK'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'jagtu' => '42318168@qq.com' }
  s.source           = { :git => 'ssh://git@gitlab.ylzpay.com:2222/ios/ios_component/YHGestureUnlockSDK.git', :tag => s.version.to_s }
  s.resources = 'YHGestureUnlockSDK/Assets/*.{bundle}'
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.requires_arc = true
  
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  
  s.user_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => '$(EXCLUDED_ARCHS__EFFECTIVE_PLATFORM_SUFFIX_$(EFFECTIVE_PLATFORM_SUFFIX)__NATIVE_ARCH_64_BIT_$(NATIVE_ARCH_64_BIT)__XCODE_$(XCODE_VERSION_MAJOR))',
    'EXCLUDED_ARCHS__EFFECTIVE_PLATFORM_SUFFIX_simulator__NATIVE_ARCH_64_BIT_x86_64__XCODE_1200' => 'arm64 arm64e armv7 armv7s armv6 armv8'
  }
  
  s.prefix_header_file = 'YHGestureUnlockSDK/Classes/Config/YHGestureUnlockSDK-prefix.pch'

  s.source_files = 'YHGestureUnlockSDK/Classes/**/*{h,m}'
  
  # s.libraries        = 'z'
  # s.resource_bundles = {
  #   'YHGestureUnlockSDK' => ['YHGestureUnlockSDK/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks       = 'Foundation', 'UIKit','QuartzCore'
  s.dependency 'YHBaseSDK', '~> 1.1.3'
  s.dependency 'YHUtiliitiesSDK'
  s.dependency 'YHAlertSDK'
  #s.dependency 'YHCommonSDK'
  s.dependency 'YHBaseSDK'
  s.dependency 'SDAutoLayout'
  
end
