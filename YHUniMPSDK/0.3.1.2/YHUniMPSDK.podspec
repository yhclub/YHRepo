#
# Be sure to run `pod lib lint YHUniMPSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'YHUniMPSDK'
  s.version          = '0.3.1.2'
  s.summary          = 'YHUniMPSDK, 封装了uni小程序SDK'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
YHUniMPSDK, 封装了uni小程序SDK，版本号后3位与官方SDK版本对应
                       DESC

  s.homepage         = 'https://gitlab.ylzpay.com/ios/ios_component/YHUniMPSDK'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'yhkj_xm@163.com' => 'ljt' }
  s.source           = { :git => 'git@gitlab.ylzpay.com:ios/ios_component/YHUniMPSDK.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  
  s.ios.deployment_target = '9.0'
  
  # s.public_header_files = 'Pod/Classes/**/*.h'

  s.source_files = 'UniMPSDK/Core/**/*.{h,m}'
  
  s.resources = 'UniMPSDK/Core/Resources/*'
  
  s.vendored_frameworks      = "UniMPSDK/Core/**/*.framework"

  s.vendored_libraries       = "UniMPSDK/Core/**/*.a"

  s.libraries                = 'c++','sqlite3','z'
  
  s.framework                = 'JavaScriptCore', 'AVFoundation', 'OpenGLES', 'CoreGraphics','CoreTelephony','AddressBook','CoreMedia','AVKit','CoreText','AssetsLibrary','MediaPlayer','GLKit','QuartzCore','QuickLook','CoreLocation'
  
  s.static_framework = true
  
# s.resource_bundles = {
#     'HSAUnionApp' => ['YHUniMPSDK/UniMP/**/**/*.js','YHUniMPSDK/**/**/*.ttf','YHUniMPSDK/UniMP/**/*.wgt']
# }


end
