#
# Be sure to run `pod lib lint YHOnePaySDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'YHOnePaySDK'
  s.version          = '1.4.0.4'
  s.summary          = 'YHOnePaySDK是由易惠科技有限公司研发部开发的聚合支付SDK，称作易惠付或者统一支付.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
YHOnePaySDK是由易惠科技有限公司研发部开发的聚合支付SDK，称作易惠付或者统一支付，SDK中封装了支付宝支付、微信支付、银联支付、支付宝Wap支付、微信Wap支付等多种支付方式。
DESC

  s.homepage         = 'http://120.42.37.94:9999/showdoc-master/web/#/page/1161'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'jagtu' => '42318168@qq.com' }
  s.platform         = :ios, "8.0"
  #s.source           = { :svn => 'https://120.42.37.94:2443/svn/APP/iOS/YHComponent/YHOnePaySDK', :tag => s.version.to_s }
  
  s.source           = { :git => 'git@gitlab.ylzpay.com:ios/ios_component/YHOnePaySDK.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.frameworks       = 'SystemConfiguration', 'CoreMotion','CFNetwork', 'CoreTelephony', 'QuartzCore', 'CoreText', 'CoreGraphics', 'UIKit', 'Foundation', 'WebKit'
  
  s.libraries        = 'z', 'c++', 'sqlite3'

  s.dependency 'YHBaseSDK',         '~> 1.1.6'
  s.dependency 'YHCategorySDK',     '~> 1.0.1'
  s.dependency 'YHUtiliitiesSDK',   '~> 1.0.2'
  s.dependency 'YHAlertSDK',        '~> 1.1.6'
  s.dependency 'SAMKeychain',       '~> 1.5.3'

  s.requires_arc = true

  s.resources = 'YHOnePaySDK/Assets/**/*.{bundle}'

  s.public_header_files = ['YHOnePaySDK/Classes/Config/*.{h}','YHOnePaySDK/Classes/YHOnePaySDK.h']
  s.prefix_header_file = 'YHOnePaySDK/Classes/YHOnePaySDK.pch'
  
  s.source_files = ['YHOnePaySDK/Classes/YHOnePaySDK.h','YHOnePaySDK/Classes/YHOnePaySDK.m','YHOnePaySDK/Classes/Config/*.{h,m}','YHOnePaySDK/Classes/Common/**/*.{h,m}']
  
  s.default_subspecs = 'Alipay', 'Wxpay', 'Unionpay'

  s.subspec 'Core' do |cs|
      cs.source_files = ['YHOnePaySDK/Classes/YHOnePaySDK.h','YHOnePaySDK/Classes/YHOnePaySDK.m','YHOnePaySDK/Classes/Config/*.{h,m}','YHOnePaySDK/Classes/Common/**/*.{h,m}']
      cs.resources = 'YHOnePaySDK/Assets/**/*.{bundle}'

  end
  
  s.subspec 'Alipay' do |alipay|

      alipay.source_files = 'YHOnePaySDK/Classes/Alipay/**/*.{h,m}'
      alipay.dependency 'YHOnePaySDK/Core', s.version.to_s
      alipay.dependency 'YHAlipaySDK',       '~> 15.5'
  end
  
  s.subspec 'Wxpay' do |wxpay|

      wxpay.source_files = 'YHOnePaySDK/Classes/Wxpay/**/*.{h,m}'
      wxpay.dependency 'YHOnePaySDK/Core', s.version.to_s
      wxpay.dependency 'YHWechatSDK',       '~> 1.8'
  end
  
  s.subspec 'Unionpay' do |up|

      up.source_files = 'YHOnePaySDK/Classes/Unionpay/**/*.{h,m}'
      up.dependency 'YHOnePaySDK/Core', s.version.to_s
      up.dependency 'YHUPPayPluginSDK',  '~> 0.1'
  end
  
  s.subspec 'CCB' do |ccb|
      
      ccb.source_files = 'YHOnePaySDK/Classes/CCB/**/*.{h,m}'
      ccb.dependency 'YHOnePaySDK/Core', s.version.to_s
      ccb.dependency 'YHCCBSDK',  '~> 1.0.1'
  end


end
