#
# Be sure to run `pod lib lint YHEHCPersonalCenterModule.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'YHEHCPersonalCenterModule'
  s.version          = '3.7.8'
  s.summary          = 'A short description of YHEHCPersonalCenterModule.'
  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://gitlab.ylzpay.com/ios/ehc/YHEHCPersonalCenterModule'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'liaojiangtu' => '42318168@qq.com' }
  s.source           = { :git => 'https://gitlab.ylzpay.com/ios/ehc/YHEHCPersonalCenterModule.git' }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'YHEHCPersonalCenterModule/Classes/**/*.{h,m}'
  
#   s.resource_bundles = {
#     'YHEHCPersonalCenterModule' => ['YHEHCPersonalCenterModule/**/*.xib', 'YHEHCPersonalCenterModule/**/*.bundle', 'YHEHCPersonalCenterModule/**/*.xcassets']
#   }
  s.resources = ['YHEHCPersonalCenterModule/**/*.xib', 'YHEHCPersonalCenterModule/**/*.bundle', 'YHEHCPersonalCenterModule/**/*.xcassets']

  s.prefix_header_file = 'YHEHCPersonalCenterModule/Classes/YHEHCPersonalCenterModule-PrefixHearder.pch'

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'

  #Pubilc
  # s.dependency "AFNetworking", "~> 2.6.3"

  #Private
  s.dependency "YHCommonSDK"
  s.dependency "YHMediator"
  
  s.dependency "YHEHCUserInfo"
  s.dependency "YHEHCCommonBase"
  s.dependency "TZImagePickerController"
  s.dependency "IQKeyboardManager"


end
