#
# Be sure to run `pod lib lint YHEHCMessageNoticeModule.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'YHEHCMessageNoticeModule'
  s.version          = '3.7.8'
  s.summary          = 'A short description of YHEHCMessageNoticeModule.'
  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://gitlab.ylzpay.com/ios/ehc/YHEHCMessageNoticeModule'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'liaojiangtu' => '42318168@qq.com' }
  s.source           = { :git => 'https://gitlab.ylzpay.com/ios/ehc/YHEHCMessageNoticeModule.git' }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'YHEHCMessageNoticeModule/Classes/**/*.{h,m}'
  
#   s.resource_bundles = {
#     'YHEHCMessageNoticeModule' => ['YHEHCMessageNoticeModule/**/*.xib', 'YHEHCMessageNoticeModule/**/*.bundle', 'YHEHCMessageNoticeModule/**/*.xcassets']
#   }
  s.resources = ['YHEHCMessageNoticeModule/**/*.xib', 'YHEHCMessageNoticeModule/**/*.bundle', 'YHEHCMessageNoticeModule/**/*.xcassets']

  s.prefix_header_file = 'YHEHCMessageNoticeModule/Classes/YHEHCMessageNoticeModule-PrefixHearder.pch'

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'

  #Pubilc
  # s.dependency "AFNetworking", "~> 2.6.3"

  #Private
  s.dependency "YHCommonSDK"
  s.dependency "YHMediator"
  
  s.dependency "YHEHCUserInfo"
  s.dependency "YHEHCCommonBase"

end
