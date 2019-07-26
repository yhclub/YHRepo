Pod::Spec.new do |s|
  s.name             = 'YHDianosisGuideSDK'
  s.version          = '0.1.6'
  s.summary          = '易惠智能诊导组件。'
  s.description      = '智能导诊支持加密，自定义性别和年龄。'

  s.homepage         = 'https://www.mstpay.com:1809/ios_component/YHDianosisGuideSDK.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'XmYhkj' => 'yhkj_xm@163.com' }
  s.source           = { :git => 'https://www.mstpay.com:1809/ios_component/YHDianosisGuideSDK.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'YHDianosisGuideSDK/Classes/**/*'
  
  s.resource_bundles = {
    'YHDianosisGuideSDK' => ['YHDianosisGuideSDK/Assets/*.{xcassets,json}']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'YHCommonSDK'#, '1.0.4'
end
