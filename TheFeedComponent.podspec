#
# Be sure to run `pod lib lint TheFeedComponent.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TheFeedComponent'
  s.version          = '0.1.0'
  s.summary          = 'A short description of TheFeedComponent.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/<GITHUB_USERNAME>/TheFeedComponent'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Alberto Chamorro' => 'alberto.chamorro@hudl.com' }
  s.source           = { :git => 'https://github.com/aichamorro/TheFeedComponent.git', :commit=> '614a6322f2e450eea80a32d5ac2d8e7279115bba' }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'TheFeedComponent/Classes/**/*'
  s.resource_bundle = { 'TheFeedComponent' => 'TheFeedComponent/Assets/**/*' }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'AppComponent', '~> 0.1.0'
  s.dependency 'HudlLog'
  s.dependency 'URLRouter'
end
