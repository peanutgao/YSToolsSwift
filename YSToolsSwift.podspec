#
# Be sure to run `pod lib lint YSToolsSwift.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'YSToolsSwift'
  s.version          = '0.1.0'
  s.summary          = '项目工具类集合'
  s.swift_version    = '5.0'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Common Dev Tools
                       DESC

  s.homepage         = 'https://github.com/peanutgao/YSToolsSwift'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'peanutgao' => 'Joseph0750@gmail.com' }
  s.source           = { :git => 'https://github.com/peanutgao/YSToolsSwift.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'

  s.source_files = 'YSToolsSwift/Classes/**/*'
  
  s.subspec 'Create' do |ss|
    ss.source_files = 'YSToolsSwift/Classes/Create/*'
  end
  s.subspec 'Extension' do |ss|
    ss.source_files = 'YSToolsSwift/Classes/Extension/*'
  end
  s.subspec 'Tools' do |ss|
    ss.source_files = 'YSToolsSwift/Classes/Tools/*'
  end
  
  # s.resource_bundles = {
  #   'YSToolsSwift' => ['YSToolsSwift/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'SnapKit', '~> 5.0.1'
  s.dependency 'SDWebImage', '~> 5.10.0'
end
