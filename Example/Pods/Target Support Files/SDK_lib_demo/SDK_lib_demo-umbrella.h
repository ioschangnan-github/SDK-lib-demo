#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "Cutter.h"
#import "UIScrollView+Cutter.h"
#import "UIView+Cutter.h"

FOUNDATION_EXPORT double SDK_lib_demoVersionNumber;
FOUNDATION_EXPORT const unsigned char SDK_lib_demoVersionString[];

