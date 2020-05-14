#
# Be sure to run `pod lib lint YHMediator.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'YHMediator'
  s.version          = '0.1.3'
  s.summary          = 'A Mediator.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  V0.1.1:初始化,去掉YYKit;
  V0.1.2:加入needAuth;
  V0.1.3:支持主工程moduleconfig.plist; 
                       DESC

  s.homepage         = 'http://gitlab.ylzpay.com/ios/ios_component/YHMediator.git'
  
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'YlzYh' => 'yhkj_xm@163.com' }
  s.source           = { :git => 'http://gitlab.ylzpay.com/ios/ios_component/YHMediator.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'YHMediator/Classes/**/*'
  
  # s.resource_bundles = {
  #   'YHMediator' => ['YHMediator/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency ''
  
end
