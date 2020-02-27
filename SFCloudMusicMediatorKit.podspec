#
# Be sure to run `pod lib lint SFCloudMusicMediatorKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SFCloudMusicMediatorKit'
  s.version          = '0.1.4'
  s.summary          = 'SFCloudMusicMediatorKit.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
A short description of SFCloudMusicMediatorKit.
                       DESC

  s.homepage         = 'https://github.com/shcamaker/SFCloudMusicMediatorKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'shcamaker' => 'alex.shen@wesoft.com' }
  s.source           = { :git => 'https://github.com/shcamaker/SFCloudMusicMediatorKit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.swift_version = '5.0'
  s.ios.deployment_target = '8.0'

#  s.source_files = 'SFCloudMusicMediatorKit/Classes/**/*'

s.subspec 'Coordinators' do |c|
    c.source_files = 'SFCloudMusicMediatorKit/Classes/Coordinators/**/*'
    c.dependency 'CTMediator'
    c.dependency 'XCoordinator'
    c.dependency 'XCoordinator/RxSwift'
    c.dependency 'RxSwift', '~> 5'
end

s.subspec 'Mediator' do |m|
     m.source_files = 'SFCloudMusicMediatorKit/Classes/Mediator/**/*'
     m.dependency 'CTMediator'
end


  
  # s.resource_bundles = {
  #   'SFCloudMusicMediatorKit' => ['SFCloudMusicMediatorKit/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
end
