#
# Be sure to run `pod lib lint YHEHCPatientServiceModule.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'YHEHCPatientServiceModule'
  s.version          = '2.0.0'
  s.summary          = 'A short description of YHEHCPatientServiceModule.'
  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://gitlab.ylzpay.com/ios/ehc/YHEHCPatientServiceModule'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'liaojiangtu' => '42318168@qq.com' }
  s.source           = { :git => 'https://gitlab.ylzpay.com/ios/ehc/YHEHCPatientServiceModule.git' }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'YHEHCPatientServiceModule/Classes/**/*.{h,m}'
  
  # s.resource_bundles = {
  #   'YHEHCPatientServiceModule' => ['YHEHCPatientServiceModule/Assets/*.png']
  # }
  s.resources = ['YHEHCPatientServiceModule/**/*.xib', 'YHEHCPatientServiceModule/**/*.bundle', 'YHEHCPatientServiceModule/**/*.xcassets']

  s.prefix_header_file = 'YHEHCPatientServiceModule/Classes/YHEHCPatientServiceModule-PrefixHearder.pch'

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'

  #Pubilc
  # s.dependency "AFNetworking", "~> 2.6.3"

  #Private
  s.dependency "YHCommonSDK"
  s.dependency "YHMediator"
  s.dependency "YHOnePaySDK"
  
  s.dependency "YHEHCUserInfo"
  s.dependency "YHEHCCommonBase"

end
