//
//  UIColor+RandomColors.h
//  browzine
//
//  Created by Karl Becker on 1/21/14.
//  Copyright (c) 2014 Third Iron. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (RandomColors)

+ (UIColor *)randomColor;
+ (UIColor *)randomLightColor;
+ (UIColor *)randomDarkColor;
+ (UIColor *)randomColorWithBrightnessAbove:(float)fBrightnessPercentageFromZeroToOne;
+ (UIColor *)randomColorWithBrightnessBelow:(float)fBrightnessPercentageFromZeroToOne;

@end
