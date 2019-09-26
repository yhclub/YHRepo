#
# Be sure to run `pod lib lint YHHealthToolSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'YHHealthToolSDK'
  s.version          = '1.1.10'
  s.summary          = '健康助手SDK，来自易惠科技有限公司'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
健康助手SDK，包括用药提醒、产妇体检计划、儿童疫苗接种计划、健康自测等功能，是用户的健康助手。
------
V1.0.0 create by jagtu
V1.0.2 修复bug.   by jagtu
V1.0.4 更新config配置方式.   by jagtu
V1.0.7 修复bug.   by jagtu
V1.0.10 修复大标题联动bug.   by jagtu
V1.1.0  稳定版本V1.1
V1.1.4  修复消息通知的顺序
V1.1.5  修复iOS10崩溃bug
V1.1.9  修复【用药提醒】添加成功后，再次添加，点击完成没有反应
V1.1.10 兼容中间件调用规则,支持1.1.7版本的YHCommonSDK
------
                       DESC

  s.homepage         = 'https://www.mstpay.com:1809/ios_component/YHHealthToolSDK.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'XmYhkj' => 'yhkj_xm@163.com' }
  s.source           = { :git => 'https://www.mstpay.com:1809/ios_component/YHHealthToolSDK.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.prefix_header_file = 'YHHealthToolSDK/Classes/YHHealthToolSDK.pch'
  s.source_files = 'YHHealthToolSDK/Classes/**/*.{h,m}'
  s.resources = 'YHHealthToolSDK/Assets/**/*.{bundle}'
  
  # s.resource_bundles = {
  #   'YHHealthToolSDK' => ['YHHealthToolSDK/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  s.dependency 'SDWebImage' #, '~> 4.0.0'
  s.dependency 'YHCommonSDK' #, '1.1.6.5'

end
