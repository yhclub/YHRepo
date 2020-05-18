#
# Be sure to run `pod lib lint YHEHCUserInfo.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'YHEHCUserInfo'
  s.version          = '2.0.0'
  s.summary          = 'A short description of YHEHCUserInfo.'
  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://gitlab.ylzpay.com/ios/ehc/YHEHCUserInfo'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'liaojiangtu' => '42318168@qq.com' }
  s.source           = { :git => 'https://gitlab.ylzpay.com/ios/ehc/YHEHCUserInfo.git' }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'YHEHCUserInfo/Classes/**/*.{h,m}'
  
  # s.resource_bundles = {
  #   'YHEHCUserInfo' => ['YHEHCUserInfo/Assets/*.png']
  # }
  s.resources = ['YHEHCUserInfo/**/*.xib', 'YHEHCUserInfo/**/*.bundle', 'YHEHCUserInfo/**/*.xcassets']

  s.prefix_header_file = 'YHEHCUserInfo/Classes/YHEHCUserInfo-PrefixHearder.pch'

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'

  #Pubilc
  s.dependency "FMDB"

  #Private
  s.dependency "YHCommonSDK"
  s.dependency "YHMediator"
  s.dependency "YHEHCCommonBase"

end
