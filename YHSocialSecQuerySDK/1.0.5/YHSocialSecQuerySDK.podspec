#
# Be sure to run `pod lib lint YHSocialSecQuerySDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = 'YHSocialSecQuerySDK'
    s.version          = '1.0.5'
    s.summary          = '医社保查询 YHSocialSecQuerySDK.'
    
    # This description is used to generate tags and improve search results.
    #   * Think: What does it do? Why did you write it? What is the focus?
    #   * Try to keep it short, snappy and to the point.
    #   * Write the description between the DESC delimiters below.
    #   * Finally, don't worry about the indent, CocoaPods strips it!
    
    s.description      = '医社保查询SDK,目前只支持厦门与福州社保查询'
    
    s.homepage         = 'https://120.42.37.94:2443/svn/APP/iOS/YHComponent/YHSocialSecQuerySDK'
    # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'haifeng3099@126.com' => 'haifeng3099@126.com' }
    #s.source           = { :svn => 'https://120.42.37.94:2443/svn/APP/iOS/YHComponent/YHSocialSecQuerySDK', :tag => s.version.to_s }
    s.source           = { :git => 'git@gitlab.ylzpay.com:ios/ios_component/YHSocialSecQuerySDK.git', :tag => s.version.to_s }
    # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
    
    s.ios.deployment_target = '8.0'
    
    s.prefix_header_file = 'YHSocialSecQuerySDK/Classes/YHSocialSecQuery.pch'
    s.resources = 'YHSocialSecQuerySDK/Assets/*.{bundle}'
    s.source_files = 'YHSocialSecQuerySDK/Classes/**/*.{h,m}'
    
    # s.resource_bundles = {
    #   'YHSocialSecQuerySDK' => ['YHSocialSecQuerySDK/Assets/*.png']
    # }
    
    # s.public_header_files = 'Pod/Classes/**/*.h'
    s.frameworks = 'UIKit', 'MapKit', 'CoreLocation'
    # s.dependency 'AFNetworking', '~> 2.3'
    s.dependency 'SDWebImage' #, '~> 4.0.0'
    s.dependency 'YHCommonSDK' #, '~> 1.0.12'
end

