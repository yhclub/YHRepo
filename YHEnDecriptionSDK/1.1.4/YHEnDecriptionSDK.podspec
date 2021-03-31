Pod::Spec.new do |s|
  s.name             = 'YHEnDecriptionSDK'
  s.version          = '1.1.4'
  s.summary          = '易惠基础加密组件.'
  s.description      = <<-DESC
  V1.1.4 分离国密算法
  V1.1.3 迁移到gitlab
  V1.1.2： 新增国密送审SM2授权文件签名校验。
  
  DESC
  
  s.homepage         = 'https://gitlab.ylzpay.com/ios/ios_component/YHEnDecriptionSDK.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'yhkj' => 'yhkj_xm@163.com' }
  s.source           = { :git => 'git@gitlab.ylzpay.com:ios/ios_component/YHEnDecriptionSDK.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'
  s.xcconfig = { 'OTHER_LDFLAGS' => '-lstdc++' }
  
  # s.resource_bundles = {
  #   'YHEnDecriptionSDK' => ['YHEnDecriptionSDK/Assets/*.png']
  # }

  s.prefix_header_file = 'YHEnDecriptionSDK/Classes/YHEDPrefixHeader.pch'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  s.default_subspec = 'EncryptFull'
  
  ##---------------------------------------FULL subspec---------------------------------------##
  s.subspec 'EncryptFull' do |ss|
      ss.source_files = 'YHEnDecriptionSDK/Classes/**/*'
      ss.public_header_files = 'YHEnDecriptionSDK/Classes/Base/**/*.h'
      ss.private_header_files = ['YHEnDecriptionSDK/Classes/RSA/**/*.h','YHEnDecriptionSDK/Classes/SMService/**/*.h']
  end
  
    
  ##---------------------------------------EncryptAES subspec---------------------------------------##
  s.subspec 'EncryptAES' do |ss|
    ss.source_files = 'YHEnDecriptionSDK/Classes/RSA/**/*','YHEnDecriptionSDK/Classes/Base/**/*'
    ss.public_header_files = 'YHEnDecriptionSDK/Classes/Base/**/*.h'
    ss.private_header_files = ['YHEnDecriptionSDK/Classes/RSA/**/*.h']
    ss.pod_target_xcconfig = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'YHEnDecriptionExcludingSM=1'}
  end

end
