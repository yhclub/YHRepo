Pod::Spec.new do |s|
  s.name             = 'YHEnDecriptionSDK'
  s.version          = '1.1.3'
  s.summary          = '易惠基础加密组件.'
  s.description      = <<-DESC
  V1.1.3 迁移到gitlab
  V1.1.2： 新增国密送审SM2授权文件签名校验。
  
  DESC
  
  s.homepage         = 'https://www.mstpay.com:1809/ios_component/YHEnDecriptionSDK.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'yhkj' => 'yhkj_xm@163.com' }
  s.source           = { :git => 'https://www.mstpay.com:1809/ios_component/YHEnDecriptionSDK.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'YHEnDecriptionSDK/Classes/**/*'
  s.xcconfig = { 'OTHER_LDFLAGS' => '-lstdc++' }
  
  # s.resource_bundles = {
  #   'YHEnDecriptionSDK' => ['YHEnDecriptionSDK/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
