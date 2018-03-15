#
# Be sure to run `pod lib lint msgpack.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "msgpack"
  s.version          = "0.2.0"
  s.summary          = "Latest msgpack source, with objective-C  wrapper. Unit tested."
  s.description      = <<-DESC
			Msgpack for objective-C
			Extremely efficient object serialization library. It's like JSON, but very fast and small.
                       DESC
  s.homepage         = "https://github.com/rvi/msgpack-objective-C"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'Apache'
  s.author           = { "Rémy Virin" => "remy@remyvirin.com" }
  s.source           = { :git => "https://github.com/rvi/msgpack-objective-C.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/remyvirin'

  # s.platform     = :ios, '7.0'
  s.requires_arc = true
  
  s.ios.deployment_target = '7.0'
  s.osx.deployment_target = '10.8'

  s.source_files = 'Pod/Classes/**/*'
  s.module_map = "msgPack.modulemap"

  # s.resources = 'Pod/Assets/*.png'

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
