#
# Be sure to run `pod lib lint YHOnePaySDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'YHOnePaySDK'
  s.version          = '0.1.5.19'
  s.summary          = 'YHOnePaySDK是由易惠科技有限公司研发部开发的聚合支付SDK，称作易惠付或者统一支付.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
YHOnePaySDK是由易惠科技有限公司研发部开发的聚合支付SDK，称作易惠付或者统一支付，SDK中封装了支付宝支付、微信支付、银联支付、支付宝Wap支付、微信Wap支付等多种支付方式。
2020-03-12:cocospod依赖-官方支付宝、微信(支持高低版本)
2020-05-09:修改错误码定义，9000为支付成功
2020-10-26:兼容工行
2020-11-19:兼容【支付宝小程序-全民付全民移动支付】【微信小程序-全民付全民移动支付】
2021-12-2:新增支付宝二维码支付
[0.1.5.19]:新增public_header_files
DESC

  s.homepage         = 'https://showdoc.ylzpay.com/web/#/page/9437'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'jagtu' => '42318168@qq.com' }
  s.platform         = :ios, "9.0"

  s.source           = { :git => 'git@gitlab.ylzpay.com:ios/ios_component/YHOnePaySDK.git', :tag => s.version.to_s}

  s.ios.deployment_target = '9.0'

  s.frameworks       = 'SystemConfiguration', 'CoreMotion','CFNetwork', 'CoreTelephony', 'QuartzCore', 'CoreText', 'CoreGraphics', 'UIKit', 'Foundation', 'WebKit'
  
  s.libraries        = 'z', 'c++', 'sqlite3'

  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  
  s.user_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => '$(EXCLUDED_ARCHS__EFFECTIVE_PLATFORM_SUFFIX_$(EFFECTIVE_PLATFORM_SUFFIX)__NATIVE_ARCH_64_BIT_$(NATIVE_ARCH_64_BIT)__XCODE_$(XCODE_VERSION_MAJOR))',
    'EXCLUDED_ARCHS__EFFECTIVE_PLATFORM_SUFFIX_simulator__NATIVE_ARCH_64_BIT_x86_64__XCODE_1200' => 'arm64 arm64e armv7 armv7s armv6 armv8'
  }

  s.dependency 'YHBaseSDK'
  s.dependency 'YHCategorySDK'
  s.dependency 'YHUtiliitiesSDK'
  s.dependency 'YHAlertSDK'
  
  s.requires_arc = true

  s.resources = 'YHOnePaySDK/Assets/**/*.{bundle}'

  s.default_subspecs = 'Alipay', 'Wxpay'

  s.subspec 'Core' do |cs|
      
      cs.public_header_files = ['YHOnePaySDK/Classes/YHOnePaySDK.h','YHOnePaySDK/Classes/Config/*.{h}','YHOnePaySDK/Classes/Common/**/*.{h}','YHOnePaySDK/Classes/Extend/*.{h}']
      cs.prefix_header_file = 'YHOnePaySDK/Classes/YHOnePaySDK.pch'
      cs.source_files = ['YHOnePaySDK/Classes/YHOnePaySDK.h','YHOnePaySDK/Classes/YHOnePaySDK.m','YHOnePaySDK/Classes/Config/*.{h,m}','YHOnePaySDK/Classes/Extend/*.{h,m}','YHOnePaySDK/Classes/Common/**/*.{h,m}']
      cs.resources = 'YHOnePaySDK/Assets/**/*.{bundle}'
  end
  
  s.subspec 'Alipay' do |alipay|

      alipay.source_files = 'YHOnePaySDK/Classes/Alipay/**/*.{h,m}'
      alipay.dependency 'YHOnePaySDK/Core', s.version.to_s
#      alipay.dependency 'YHAlipaySDK',       '~> 15.5'
      alipay.dependency 'AlipaySDK-iOS'
  end
  
  s.subspec 'Wxpay' do |wxpay|

      wxpay.source_files = 'YHOnePaySDK/Classes/Wxpay/**/*.{h,m}'
      wxpay.dependency 'YHOnePaySDK/Core', s.version.to_s
#      wxpay.dependency 'YHWechatSDK',       '~> 1.8.6'
      wxpay.dependency 'WechatOpenSDK'
  end
  
  s.subspec 'Unionpay' do |up|

      up.source_files = 'YHOnePaySDK/Classes/Unionpay/**/*.{h,m}'
      up.dependency 'YHOnePaySDK/Core', s.version.to_s
      up.dependency 'YHUPPayPluginSDK',  '~> 0.1'
  end
  
  s.subspec 'UMSPosPay' do |ums|

      ums.source_files = 'YHOnePaySDK/Classes/UMSPosPay/**/*.{h,m}'
      ums.dependency 'YHOnePaySDK/Core', s.version.to_s
      ums.dependency 'YHUMSPosPayOnly'
  end
  
  s.subspec 'CCB' do |ccb|
      
      ccb.source_files = 'YHOnePaySDK/Classes/CCB/**/*.{h,m}'
      ccb.dependency 'YHOnePaySDK/Core', s.version.to_s
      ccb.dependency 'YHCCBSDK'
      ccb.dependency 'YHEnDecriptionSDK/EncryptAES'
  end
  
  s.subspec 'ICBC' do |ccb|
      
      ccb.source_files = 'YHOnePaySDK/Classes/ICBC/**/*.{h,m}'
      ccb.dependency 'YHOnePaySDK/Core', s.version.to_s
      ccb.dependency 'YHOnePaySDK/Alipay', s.version.to_s
      ccb.dependency 'YHOnePaySDK/Wxpay', s.version.to_s
      ccb.dependency 'YHICBCPaySDK',  '~> 1.0.9'
  end
  
  s.subspec 'ICBCWallet' do |wallet|
      
      wallet.resources    = 'YHOnePaySDK/ICBCWallet/Resources/*.bundle'
      wallet.vendored_frameworks = ["YHOnePaySDK/ICBCWallet/Frameworks/*.framework"]
      wallet.dependency 'YHEnDecriptionSDK/EncryptAES'
  end


end
