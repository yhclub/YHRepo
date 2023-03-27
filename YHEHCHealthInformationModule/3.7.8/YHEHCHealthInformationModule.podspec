#
# Be sure to run `pod lib lint YHEHCHealthInformationModule.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'YHEHCHealthInformationModule'
  s.version          = '3.7.8'
  s.summary          = 'A short description of YHEHCHealthInformationModule.'
  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://gitlab.ylzpay.com/ios/ehc/YHEHCHealthInformationModule'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'liaojiangtu' => '42318168@qq.com' }
  s.source           = { :git => 'https://gitlab.ylzpay.com/ios/ehc/YHEHCHealthInformationModule.git' }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'

  #Pubilc
  s.dependency "SDCycleScrollView"
  s.dependency "MSWeakTimer"

  #Private
  s.dependency "YHCommonSDK"
  s.dependency "YHMediator"
  
  s.dependency "YHEHCUserInfo"
  s.dependency "YHEHCCommonBase"

  s.prefix_header_file = 'YHEHCHealthInformationModule/Classes/YHEHCHealthInformationModule-PrefixHearder.pch'
#  s.source_files = ['YHEHCHealthInformationModule/Classes/**/*.{h,m}']

#  s.resource_bundles = {
#    'YHEHCHealthInformationModule' => ['YHEHCHealthInformationModule/**/*.xib', 'YHEHCHealthInformationModule/**/*.bundle', 'YHEHCHealthInformationModule/**/*.xcassets']
#  }
  s.resources = ['YHEHCHealthInformationModule/**/*.xib', 'YHEHCHealthInformationModule/**/*.bundle', 'YHEHCHealthInformationModule/**/*.xcassets']

  
  s.default_subspecs = 'Core'

  # Core
  s.subspec 'Core' do |sp|

#    sp.prefix_header_file = 'YHEHCHealthInformationModule/Classes/Core/YHEHCHealthInformationModule-PrefixHearder.pch'

    sp.source_files = ['YHEHCHealthInformationModule/Classes/Core/**/*.{h,m}']

    sp.resource_bundles = {
      'YHEHCHealthInformationModule' => ['YHEHCHealthInformationModule/Classes/Core/**/*.{xib,xcassets}', 'YHEHCHealthInformationModule/Classes/Core/**/*.bundle']
    }
#    sp.resources = ['YHEHCHealthInformationModule/Classes/Core/**/*.{xib,xcassets}', 'YHEHCHealthInformationModule/Classes/Core/**/*.bundle']

  end

  # 北京西城
  s.subspec 'XiCheng' do |sp|

    sp.source_files = ['YHEHCHealthInformationModule/Classes/XiCheng/**/*.{h,m}']

    sp.resource_bundles = {
      'YHEHCHealthInformationModule' => ['YHEHCHealthInformationModule/Classes/XiCheng/**/*.{xib,xcassets}', 'YHEHCHealthInformationModule/Classes/XiCheng/**/*.bundle']
    }
#    sp.resources = ['YHEHCHealthInformationModule/Classes/XiCheng/**/*.{xib,xcassets}', 'YHEHCHealthInformationModule/Classes/XiCheng/**/*.bundle']

    sp.dependency "YHEHCHealthInformationModule/Core"

  end
  
end
