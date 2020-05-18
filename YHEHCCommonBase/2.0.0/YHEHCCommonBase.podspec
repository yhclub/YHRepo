#
# Be sure to run `pod lib lint YHEHCCommonBase.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'YHEHCCommonBase'
  s.version          = '2.0.0'
  s.summary          = 'A short description of YHEHCCommonBase.'
  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://gitlab.ylzpay.com/ios/ehc/YHEHCCommonBase'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'liaojiangtu' => '42318168@qq.com' }
  s.source           = { :git => 'https://gitlab.ylzpay.com/ios/ehc/YHEHCCommonBase.git' }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'YHEHCCommonBase/Classes/**/*.{h,m}'
  
  # s.resource_bundles = {
  #   'YHEHCCommonBase' => ['YHEHCCommonBase/Assets/*.png']
  # }
  s.resources = ['YHEHCCommonBase/**/*.xib', 'YHEHCCommonBase/**/*.bundle', 'YHEHCCommonBase/**/*.xcassets']

  s.prefix_header_file = 'YHEHCCommonBase/Classes/YHEHCCommonBase-PrefixHearder.pch'

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'

  #Pubilc
  # s.dependency "AFNetworking", "~> 2.6.3"

  #Private
  s.dependency "YHCommonSDK"
  s.dependency "YHMediator"
  
  s.dependency "SDWebImage"
  s.dependency "Masonry"
  s.dependency "YHHealthToolSDK"
  s.dependency "SGQRCode"
#  s.dependency "YHDianosisGuideSDK"
  s.dependency "YHOnePaySDK"
end
