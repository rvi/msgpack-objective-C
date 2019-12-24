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
  s.version          = "0.3.1"
  s.summary          = "Latest msgpack source, with objective-C  wrapper. Unit tested."
  s.description      = <<-DESC
			Msgpack for objective-C
			Extremely efficient object serialization library. It's like JSON, but very fast and small.
                       DESC
  s.homepage         = "https://github.com/rvi/msgpack-objective-C"
  s.license          = 'Apache'
  s.author           = { "Rémy Virin" => "remy@remyvirin.com" }
  s.source           = { :git => "https://github.com/rvi/msgpack-objective-C.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/remyvirin'

  s.ios.deployment_target  = '8.0'
  s.osx.deployment_target  = '10.11'
  s.tvos.deployment_target = '9.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.private_header_files = 'Pod/Classes/msgpack_src/**/*.h'
  s.module_map = "msgPack.modulemap"
end
