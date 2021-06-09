#
# Be sure to run `pod lib lint YHWebViewSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'YHWebViewSDK'
  s.version          = '0.1.0.1'
  s.summary          = 'A WebView SDK of YH.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: 简单的webview封装.
                       DESC
  s.homepage         = 'https://gitlab.ylzpay.com/ios/ios_component/YHWebViewSDK.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'XmYhkj' => 'yhkj_xm@163.com' }
  s.source           = { :git => 'https://gitlab.ylzpay.com/ios/ios_component/YHWebViewSDK.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.prefix_header_file = 'YHWebViewSDK/Classes/YHWebViewSDK.pch'
  
  s.source_files = 'YHWebViewSDK/Classes/**/*.{h,m}'
  
  # s.resources = 'YHWebViewSDK/Assets/**/*.{bundle}'

  s.resource_bundles = {
    'YHWebViewSDK' => ['YHWebViewSDK/Assets/*.png']
  }
  
  s.public_header_files = ['YHWebViewSDK/Classes/**/*.h']

  s.frameworks = 'SystemConfiguration', 'UIKit', 'Foundation', 'WebKit'

#  s.dependency 'WebViewJavascriptBridge', '~> 6.0.2'
  s.dependency 'YHBaseSDK'

end
