#
# Be sure to run `pod lib lint YHHosrecipeSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'YHHosrecipeSDK'
  s.version          = '0.1.2'
  s.summary          = '电子处方共享平台SDK'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
电子处方共享平台。
V1.0.0版本
                       DESC

  s.homepage         = 'https://www.mstpay.com:1809/ios_component/YHHosrecipeSDK'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'yhkj' => 'yhkj_xm@163.com' }
  s.source           = { :git => 'git@gitlab.ylzpay.com:ios/ios_component/YHHosrecipeSDK.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'YHHosrecipeSDK/Classes/**/*'
  
  s.prefix_header_file = 'YHHosrecipeSDK/Classes/YHHosrecipeSDK.pch'
  
  s.public_header_files = 'Pod/Classes/**/*.h'
  
  s.resources = 'YHHosrecipeSDK/Assets/**/*.{bundle}'
  
  # s.resource_bundles = {
  #   'YHHosrecipeSDK' => ['YHHosrecipeSDK/Assets/*.png']
  # }

  s.frameworks = ['UIKit','MapKit','Corelocation']
  s.dependency 'YHCommonSDK'
  s.dependency 'SDWebImage'
  s.dependency 'YHOnePaySDK'
  s.dependency 'SGQRCode'
  s.dependency 'YBAttributeTextTapAction'
end
