#
# Be sure to run `pod lib lint MyRequestLib.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MyRequestLib'
  s.version          = '0.1.0'
  s.summary          = 'MyRequestLib is a library enabled to make HTML request.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
MyRequestLib is a library enabled to make HTML request (GET, POST, PUT, DELETE). The
library was created with education ends.
                       DESC

  s.homepage         = 'https://github.com/javesp/MyRequestLib'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'javesp' => 'javierespinoza23@gmail.com' }
  s.source           = { :git => 'https://github.com/javesp/MyRequestLib.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'MyRequestLib/*.(swift)'
  
  # s.resource_bundles = {
  #   'MyRequestLib' => ['MyRequestLib/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
