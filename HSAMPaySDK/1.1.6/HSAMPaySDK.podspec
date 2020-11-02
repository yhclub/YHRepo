#
# Be sure to run `pod lib lint HSAMPaySDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'HSAMPaySDK'
  s.version          = '1.1.6'
  s.summary          = '国家医保混合支付SDK'
  s.description      = <<-DESC
TODO: 国家医保混合支付SDK，支持线上移动医保结算
                       DESC

  s.homepage         = 'https://gitlab.ylzpay.com/ios/hsa/HSAMPaySDK'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'liaojiangtu' => '42318168@qq.com' }
  s.source           = { :git => 'ssh://git@gitlab.ylzpay.com:2222/ios/hsa/HSAMPaySDK.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  
  s.ios.deployment_target = '9.0'

  s.frameworks = 'CoreLocation', 'UIKit', 'Foundation', 'WebKit', 'SystemConfiguration', 'CoreMotion','CFNetwork', 'CoreTelephony', 'QuartzCore', 'CoreText', 'CoreGraphics'
    
  s.libraries        = 'z', 'c++', 'sqlite3'
  
  s.prefix_header_file = 'HSAMPaySDK/Classes/HSAECMedicarePayPrefixHearder.pch'
  
#  s.private_header_files = ['HSAMPaySDK/Classes/BaseDP/**/*.h','HSAMPaySDK/Classes/Business/**/*.h','HSAMPaySDK/Classes/Router/**/*.h','HSAMPaySDK/Classes/HSACommon//**/*.h']
  
  s.public_header_files = ['HSAMPaySDK/Classes/HSAMPaySDK.h','HSAMPaySDK/Classes/Config/**/*.{h}','HSAMPaySDK/Classes/HSACommon/Base/Config/**/*.h','HSAMPaySDK/Classes/HSACommon/HSA-NetEncryption-iOS/Config/**/*.h']
  
  s.source_files = ['HSAMPaySDK/Classes/**/*']
  
  s.resources = ['HSAMPaySDK/Assets/**/*.xcassets', 'HSAMPaySDK/Assets/**/*.bundle', 'HSAMPaySDK/Assets/**/*.xib']
  
    #Pubilc
  s.dependency 'AFNetworking'
  s.dependency 'SVProgressHUD'
#  s.dependency 'Masonry'
  
  s.dependency 'YHBaseSDK'
  s.dependency 'YHCategorySDK'
  s.dependency 'YHUtiliitiesSDK'
  s.dependency 'YHAlertSDK'
  s.dependency 'MJRefresh'
  s.dependency 'SDAutoLayout'
  s.dependency 'YHModel'
  s.dependency 'Toast'
  
    #Private
  s.dependency 'YHOcrSDK'
    
  
  s.xcconfig = { 'OTHER_LDFLAGS' => '-lstdc++' }
  

#  s.default_subspecs = 'Core'
#
#  # Base
#  s.subspec 'Base' do |sp|
#
#    sp.prefix_header_file = 'HSAMPaySDK/Base/HSABasePrefixHearder.pch'
#
#    sp.private_header_files = ['HSAMPaySDK/Base/BaseVC/*.h','HSAMPaySDK/Base/Category/*.h','HSAMPaySDK/Base/Common/**/*.h','HSAMPaySDK/Base/Model/*.h','HSAMPaySDK/Base/Net/*.h','HSAMPaySDK/Base/Presenter/*.h','HSAMPaySDK/Base/Protocol/*.h']
#
#    sp.public_header_files = ['HSAMPaySDK/Base/Config/**/*.h','HSAMPaySDK/Base/Router/*.h']
#
#    sp.source_files = ['HSAMPaySDK/Base/**/*.{h,m}']
#
#    sp.resources = ['HSAMPaySDK/Base/**/*.{xib,xcassets}', 'HSAMPaySDK/Base/**/*.bundle']
#
#    #Pubilc
#    sp.dependency 'YHBaseSDK'
#    sp.dependency 'YHCategorySDK'
#    sp.dependency 'YHUtiliitiesSDK'
#    sp.dependency 'YHAlertSDK'
#    sp.dependency 'MJRefresh'
#    sp.dependency 'SDAutoLayout'
#    sp.dependency 'YHModel'
#    sp.dependency 'Toast'
#
#  end
#
#  #Core
#  s.subspec 'Core' do |sp|
#
#    sp.prefix_header_file = 'HSAMPaySDK/MedicarePay/HSAECMedicarePayPrefixHearder.pch'
#
#    sp.private_header_files = ['HSAMPaySDK/MedicarePay/BaseDP/**/*.h','HSAMPaySDK/MedicarePay/Business/**/*.h','HSAMPaySDK/MedicarePay/Router/**/*.h']
#
#    sp.public_header_files = ['HSAMPaySDK/MedicarePay/Config/**/*.{h}']
#
#    sp.source_files = ['HSAMPaySDK/MedicarePay/**/*.{h,m}']
#
#    sp.resources = ['HSAMPaySDK/MedicarePay/**/*.xcassets', 'HSAMPaySDK/MedicarePay/**/*.bundle', 'HSAMPaySDK/MedicarePay/**/*.xib']
#
#    #Pubilc
#    sp.dependency 'AFNetworking'
#    sp.dependency 'SVProgressHUD'
#    sp.dependency 'Masonry'
#
#    #Private
#    sp.dependency 'HSAMPaySDK/Base'
#    sp.dependency 'HSA-NetEncryption-iOS'
#    sp.dependency 'YHOcrSDK'
#
#  end

end
