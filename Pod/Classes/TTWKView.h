//
// TTWKView
// Copyright (c) 2015, TouchTribe B.V. All rights reserved.
//
// This source code is available under the MIT license. See the LICENSE file for more info.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol TTWKFlare <NSObject>

@property (nonatomic) CGPoint position;

@property (nonatomic, readonly) CGPoint anchorPoint;

@property (nonatomic, readonly) CGSize size;

- (void)drawAtTime:(NSTimeInterval)time;

@end

@interface TTWKFlareView : NSObject

@end
