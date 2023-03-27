#
# Be sure to run `pod lib lint YHOnlineConsultSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'YHOnlineConsultSDK'
  s.version          = '8.3.7.8'
  s.summary          = '易惠问诊模块。'

#  版本号命名规则说明：project.major.minor.sub
#  以下定义project
#   * 演示-患者端：1
#   * 演示-医生端：2
#   * SaaS版-患者端：3
#   * SaaS版-医生端：4
#   * 发热-医生端：5
#   * 吉林大学互联网医院-患者端：6
#   * 吉林大学互联网医院-医生端：7
#   * 健康西城-患者端：8
#   * 健康西城-医生端：9
#   * 盘锦互联网医院-医生端：10
#   * 世行基卫便民-医生端：11

  s.description      = '易惠问诊模块。'

  s.homepage         = 'http://gitlab.ylzpay.com/ios/ios_component/YHOnlineConsultSDK'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'chenjinpeng' => 'q2522535@163.com' }
  s.source           = { :git => 'git@gitlab.ylzpay.com:ios/ios_component/YHOnlineConsultSDK.git', :tag => 'xicheng.patient.3.7.8' }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'
  
  s.default_subspec = 'Full'
  
  ##---------------------------------------FULL subspec---------------------------------------##
  s.subspec 'Full' do |ss|
      ss.dependency 'YHOnlineConsultSDK/Patient'
      ss.dependency 'YHOnlineConsultSDK/Doctor'
      ss.pod_target_xcconfig = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'YHOnlineConsultSDKFullType=0'}
  end
  
    
  ##---------------------------------------Patient subspec---------------------------------------##
  s.subspec 'Patient' do |ss|
    ss.source_files = 'YHOnlineConsultSDK/Classes/YHPatient/**/*'
    ss.dependency 'YHOnePaySDK'
    ss.dependency 'YHOnlineConsultSDK/Base'
    ss.pod_target_xcconfig = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'YHOnlineConsultSDKPatientType=1'}
  end

  ##---------------------------------------doctor subspec---------------------------------------##
  
  s.subspec 'Doctor' do |ss|
    ss.source_files = 'YHOnlineConsultSDK/Classes/YHDoctor/**/*'
    ss.dependency 'YHOnlineConsultSDK/Base'
    ss.pod_target_xcconfig = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'YHOnlineConsultSDKDoctorType=2'}
  end

  ##---------------------------------------Base subspec---------------------------------------##
  s.subspec 'Base' do |ss|
    ss.source_files = 'YHOnlineConsultSDK/Classes/YHCommom/**/*', 'YHOnlineConsultSDK/Classes/YHIM/**/*', 'YHOnlineConsultSDK/Classes/YHOCConfig/**/*'
    
    ss.resource_bundles = {
       'YHOnlineConsultSDK' => ['YHOnlineConsultSDK/Assets/*.{xcassets}',
                                'YHOnlineConsultSDK/Assets/*/*.{bundle,wav,mp3,aac}',
                                'YHOnlineConsultSDK/Assets/**/*.{xib}']
    }

    ss.prefix_header_file = 'YHOnlineConsultSDK/Classes/YHOnlineConsultPrefixHeader.pch'
    # s.frameworks = 'UIKit', 'MapKit'
    ss.dependency 'NIMKit/Full', '3.3.0'
    ss.dependency 'CocoaLumberjack'
    ss.dependency 'SSZipArchive'
    ss.dependency 'SVProgressHUD'
    ss.dependency 'YHCommonSDK'
    ss.dependency 'YHBaseSDK'
    ss.dependency 'FMDB'
    ss.dependency 'SDWebImage'
    ss.dependency 'YHCommonUI'

  end

  
end
