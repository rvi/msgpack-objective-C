//
//  msgpack.h
//  msgpack
//
//  Created by Ricardo Pereira on 13/10/2017.
//
//

#if TARGET_OS_IPHONE
#import <UIKit/UIKit.h>
#else
#import <AppKit/AppKit.h>
#endif

//! Project version number for msgpack.
FOUNDATION_EXPORT double msgpackVersionNumber;

//! Project version string for msgpack.
FOUNDATION_EXPORT const unsigned char msgpackVersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <msgpack/PublicHeader.h>

#import "MessagePack.h"
