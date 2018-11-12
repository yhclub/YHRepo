#
# Be sure to run `pod lib lint YHOnePaySDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'YHOnePaySDK'
  s.version          = '1.2.3.2'
  s.summary          = 'YHOnePaySDK是由易惠科技有限公司研发部开发的聚合支付SDK，称作易惠付或者统一支付.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
YHOnePaySDK是由易惠科技有限公司研发部开发的聚合支付SDK，称作易惠付或者统一支付，SDK中封装了支付宝支付、微信支付、银联支付、支付宝Wap支付、微信Wap支付等多种支付方式。
V2.1.0修改点：YHOnePaySDK.h对外提供服务，YHOnePayConfig.h提供配置修改，YHOnePayTheme提供主题风格色调修改。
V2.1.2 修改YHOnePayTheme中颜色的命名、导航栏样式的修改；
V2.1.10 修复银联云闪付APP、银联表单支付方式的bug;
V2.1.12 修复微信H5支付，提示网络环境未通过安全检查的问题(手机端ip地址错误);
V1.2.3  统一版本号，之前版本已在YHRepo上删除
V1.2.3.2  修改YHOnePaySDK 支撑协议代理方式回调

DESC

  s.homepage         = 'http://120.42.37.94:9999/showdoc-master/web/#/page/1161'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'jagtu' => '42318168@qq.com' }
  s.platform         = :ios, "8.0"
  s.source           = { :svn => 'https://120.42.37.94:2443/svn/APP/iOS/YHComponent/YHOnePaySDK', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.frameworks       = 'SystemConfiguration', 'CoreMotion','CFNetwork', 'CoreTelephony', 'QuartzCore', 'CoreText', 'CoreGraphics', 'UIKit', 'Foundation', 'WebKit'
  
  s.libraries        = 'z', 'c++', 'sqlite3'

  s.dependency 'YHBaseSDK',         '~> 1.1'
  s.dependency 'YHCategorySDK',     '~> 1.0'
  s.dependency 'YHUtiliitiesSDK',   '~> 1.0'
  s.dependency 'YHAlertSDK',        '~> 1.0'
  s.dependency 'YHAlipaySDK',       '~> 15.5'
  s.dependency 'YHWechatSDK',       '~> 1.8'
  s.dependency 'SAMKeychain',       '~> 1.5'
  s.dependency 'YHUPPayPluginSDK',  '~> 0.1'

  s.requires_arc = true

  s.resources = 'YHOnePaySDK/Assets/**/*.{bundle}'

  s.public_header_files = ['YHOnePaySDK/Classes/config/*.{h}','YHOnePaySDK/Classes/YHOnePaySDK.h']
  s.prefix_header_file = 'YHOnePaySDK/Classes/YHOnePaySDK.pch'
  s.source_files = 'YHOnePaySDK/Classes/**/*.{h,m}'

#  s.default_subspec = 'source'
#  s.subspec 'source' do |source|
#    source.prefix_header_file = 'YHOnePaySDK/Classes/YHOnePaySDK.pch'
#    source.public_header_files = 'Pod/Classes/**/*.{h,m}'
#    source.source_files = 'YHOnePaySDK/Classes/**/*.{h,m}'
#  end

#  s.subspec 'frameWork' do |frameWork|
#    frameWork.ios.vendored_frameworks = 'YHOnePaySDK/Frameworks/*.framework'
#  end
  

end
