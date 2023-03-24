Pod::Spec.new do |s|
  s.name             = 'YHDianosisGuideSDK'
  s.version          = '0.1.8'
  s.summary          = '智能导诊SDK'
  s.description      = '智能导诊支持加密，自定义性别和年龄。'

  s.homepage         = 'http://gitlab.ylzpay.com/ios/ios_component/YHDianosisGuideSDK.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'XmYhkj' => 'yhkj_xm@163.com' }
  s.source           = { :git => 'git@gitlab.ylzpay.com:ios/ios_component/YHDianosisGuideSDK.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'YHDianosisGuideSDK/Classes/**/*'
  
  s.resource_bundles = {
    'YHDianosisGuideSDK' => ['YHDianosisGuideSDK/Assets/*.{xcassets,json}']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'YHCommonSDK'#, '1.0.4'
end
