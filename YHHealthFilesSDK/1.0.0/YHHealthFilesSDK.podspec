#
# Be sure to run `pod lib lint YHHealthFilesSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'YHHealthFilesSDK'
  s.version          = '1.0.0'
  s.summary          = '易惠健康档案模块。'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = '易惠健康档案模块。'

  s.homepage         = 'https://gitlab.ylzpay.com/ios/ios_component/YHHealthFilesSDK'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'imhwn@vip.qq.com' => 'imhwn@vip.qq.com' }
  s.source           = { :git => 'git@gitlab.ylzpay.com:ios/ios_component/YHHealthFilesSDK.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'YHHealthFilesSDK/Classes/**/*'
  
  s.resource_bundles = {
    'YHHealthFilesSDK' => ['YHHealthFilesSDK/Assets/*.{xcassets}']
  }

  s.prefix_header_file = 'YHHealthFilesSDK/Classes/YHHealthFilesPrefixHeader.pch'

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  s.dependency 'YHCommonSDK'
  s.dependency 'YHBaseSDK'
  s.dependency 'SDWebImage'
end
