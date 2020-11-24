#
# Be sure to run `pod lib lint YHImmuneAppointMent.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = 'YHImmuneAppointMent'
    s.version          = '2.0.5'
    s.summary          = '免疫接种 YHImmuneAppointMentSDK.'
    s.description      = '免疫接种SDK,目前只支持厦门与福州'
    s.homepage         = 'http://gitlab.ylzpay.com/ios/ios_component/YHImmuneAppointMent.git'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'vicentwyh' => '236021234@qq.com' }
    s.source           = { :git => 'http://gitlab.ylzpay.com/ios/ios_component/YHImmuneAppointMent.git', :tag => s.version.to_s }
    s.ios.deployment_target = '8.0'
    s.prefix_header_file = 'YHImmuneAppointMent/Classes/YHImmuneAppointMent.pch'
    s.resources = 'YHImmuneAppointMent/Assets/*.{bundle}'
    s.source_files = 'YHImmuneAppointMent/Classes/**/*.{h,m}'
    s.dependency 'SDWebImage'#, '~> 4.0.0'
    s.dependency 'YHCommonSDK'
    s.dependency 'SGQRCode'
    s.dependency 'YHModel'
end
