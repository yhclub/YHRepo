#
# Be sure to run `pod lib lint YHCommonUI.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'YHCommonUI'
  s.version          = '0.1.0'
  s.summary          = 'YHCommonUI, 通用UI组件.'
  s.description      = <<-DESC
TODO: Add long description of the pod here.

                       DESC

  s.homepage         = 'https://gitlab.ylzpay.com/ios/ios_component/YHCommonUI'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '易惠科技' => '42318168@qq.com' }
  s.source           = { :git => 'https://gitlab.ylzpay.com/ios/ios_component/YHCommonUI.git', :tag => s.version.to_s}
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'YHCommonUI/Classes/**/*'

  s.resource_bundles = {
    'YHCommonUI' => ['YHCommonUI/Assets/*.{xcassets}']
  }

  # s.resources = ['YHCommonUI/**/*.xib', 'YHCommonUI/**/*.bundle', 'YHCommonUI/**/*.xcassets']

  s.prefix_header_file = 'YHCommonUI/Classes/YHCommonUI-PrefixHearder.pch'

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'

  #Pubilc
  # s.dependency "AFNetworking", "~> 2.6.3"

  #Private
  s.dependency "YHBaseSDK"
  s.dependency 'YHCommonSDK'
end
