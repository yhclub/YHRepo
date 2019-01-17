#
# Be sure to run `pod lib lint YHEhealthcardSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'YHEhealthcardSDK'
  s.version          = '1.0.7'
  s.summary          = 'YHEhealthcardSDK, 电子健康卡.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
电子健康卡SDK，由易惠公司开发的一款对接电子健康卡卡管系统的iOS原生SDK，支持展示电子健康码等功能。对接指南：http://120.42.37.94:9999/showdoc-master/web/#/page/2781
                       DESC

  s.homepage         = 'http://192.168.11.239/ios_component/YHEhealthcardSDK.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'jagtu' => 'yhkj_xm@163.com' }
  #  s.source           = { :svn => 'https://120.42.37.94:2443/svn/APP/iOS/YHComponent/YHEhealthcardSDK', :tag => s.version.to_s }
  s.source           = { :git => 'http://192.168.11.239/ios_component/YHEhealthcardSDK.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.requires_arc = true
  
  s.prefix_header_file = 'YHEhealthcardSDK/Classes/YHEhealthcardSDK.pch'
  
  s.resources = 'YHEhealthcardSDK/Assets/**/*.{bundle}'
  
  s.source_files = 'YHEhealthcardSDK/Classes/**/*.{h,m}'
  
  s.public_header_files = 'YHEhealthcardSDK/Classes/config/*.h'

  s.frameworks       = 'SystemConfiguration', 'CoreMotion','CFNetwork', 'CoreTelephony', 'QuartzCore', 'CoreText', 'CoreGraphics', 'UIKit', 'Foundation', 'WebKit'
  s.libraries        = 'z', 'c++', 'sqlite3'
  
  s.dependency 'YHCommonSDK', '~> 1.1.6'
  s.dependency 'YHAlipaySDK', '~> 15.5' #支付宝
  
end
