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
  s.version          = "0.1.6"
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

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'


   s.prepare_command = <<-CMD
    cat > "module.map" << MAP
    module zlib [system] {
    	header "$SDKROOT/usr/include/zlib.h"
    	link "zlib"
    	export  "MessagePack.h"
    	export "MessagePackPacker.h"
	export "MessagePackParser+Streaming.h"
	export "MessagePackParser.h"
	export "object.h"
	export "pack.h"
	export "pack_define.h"
	export "pack_template.h"
	export "sbuffer.h"
	export "sysdep.h"
	export "unpack.h"
	export "unpack_define.h"
	export "version.h"
	export "version_master.h"
	export "vrefbuffer.h"
	export "zone.h"
	export "msgpack.h"
	export "NSArray+MessagePack.h"
	export "NSData+MessagePack.h"
	export "NSDictionary+MessagePack.h"
	export "NSNull+MessagePack.h"
	export "NSNumber+MessagePack.h"
	export "NSString+MessagePack.h"
     }   
    MAP
  CMD
  # s.resources = 'Pod/Assets/*.png'

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
