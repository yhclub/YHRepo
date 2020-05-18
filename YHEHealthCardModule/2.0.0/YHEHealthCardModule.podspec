#
# Be sure to run `pod lib lint YHEHealthCardModule.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'YHEHealthCardModule'
  s.version          = '2.0.0'
  s.summary          = 'A short description of YHEHealthCardModule.'
  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://gitlab.ylzpay.com/ios/ehc/YHEHealthCardModule'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'liaojiangtu' => '42318168@qq.com' }
  s.source           = { :git => 'https://gitlab.ylzpay.com/ios/ehc/YHEHealthCardModule.git' }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'YHEHealthCardModule/Classes/**/*.{h,m}'
  
  # s.resource_bundles = {
  #   'YHEHealthCardModule' => ['YHEHealthCardModule/Assets/*.png']
  # }
  s.resources = ['YHEHealthCardModule/**/*.xib', 'YHEHealthCardModule/**/*.bundle', 'YHEHealthCardModule/**/*.xcassets']

  s.prefix_header_file = 'YHEHealthCardModule/Classes/YHEHealthCardModule-PrefixHearder.pch'

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'

  #Pubilc
  # s.dependency "AFNetworking", "~> 2.6.3"

  #Private
  s.dependency "YHCommonSDK"
  s.dependency "YHMediator"
  
  s.dependency "YHEHCUserInfo"
  s.dependency "YHEHCCommonBase"
  s.dependency "SGQRCode"

end
