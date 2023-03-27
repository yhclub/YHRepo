#
# Be sure to run `pod lib lint YHEHCLoginModule.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'YHEHCLoginModule'
  s.version          = '3.7.8'
  s.summary          = 'A short description of YHEHCLoginModule.'
  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://gitlab.ylzpay.com/ios/ehc/YHEHCLoginModule'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'liaojiangtu' => '42318168@qq.com' }
  s.source           = { :git => 'https://gitlab.ylzpay.com/ios/ehc/YHEHCLoginModule.git' }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'YHEHCLoginModule/Classes/**/*.{h,m}'
  
#  s.resource_bundles = {
#    'YHEHCLoginModule' => ['YHEHCLoginModule/**/*.xib', 'YHEHCLoginModule/**/*.bundle', 'YHEHCLoginModule/**/*.xcassets']
#  }
  s.resources = ['YHEHCLoginModule/**/*.xib', 'YHEHCLoginModule/**/*.bundle', 'YHEHCLoginModule/**/*.xcassets']

  s.prefix_header_file = 'YHEHCLoginModule/Classes/YHEHCLoginModule-PrefixHearder.pch'

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'

  #Pubilc
   s.dependency "SVProgressHUD"

  #Private
  s.dependency "YHCommonSDK"
  s.dependency "YHMediator"
  
  s.dependency "YHEHCUserInfo"
  s.dependency "YHEHCCommonBase"

  s.dependency "AlipaySDK-iOS"
end
