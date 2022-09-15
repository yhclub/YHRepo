#
# Be sure to run `pod lib lint YHOnlineConsultSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'YHOnlineConsultSDK'
  s.version          = 'jw.1.0.2'
  s.summary          = '易惠问诊模块，世行基卫便民医生端-1.0.2版本'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = '易惠问诊模块。'

  s.homepage         = 'http://gitlab.ylzpay.com/ios/ios_component/YHOnlineConsultSDK'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'chenjinpeng' => 'q2522535@163.com' }
  s.source           = { :git => 'https://gitlab.ylzpay.com/ios/ios_component/YHOnlineConsultSDK.git', :tag => s.version.to_s }
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
    ss.dependency 'NIMKit/Full', '2.12.5'
    ss.dependency 'CocoaLumberjack'
#    ss.dependency 'SSZipArchive'
    ss.dependency 'SVProgressHUD'
    ss.dependency 'YHCommonSDK'
    ss.dependency 'YHBaseSDK'
    ss.dependency 'FMDB'
    ss.dependency 'SDWebImage'
#    ss.dependency 'YBImageBrowser'
  end

  
end
