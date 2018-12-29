Pod::Spec.new do |s|
  s.name             = 'YHEnDecriptionSDK'
  s.version          = '1.1.2'
  s.summary          = '易惠基础加密组件.'
  s.description      = 'V1.1.2： 新增国密送审SM2授权文件签名校验。'

  s.homepage         = 'https://120.42.37.94:2443/svn/APP/iOS/YHComponent/YHEnDecriptionSDK'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'XmYhkj' => 'yhkj_xm@163.com' }
  s.source           = { :svn => 'https://120.42.37.94:2443/svn/APP/iOS/YHComponent/YHEnDecriptionSDK', :tag => s.version.to_s }
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
