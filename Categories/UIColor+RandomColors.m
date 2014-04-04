//
//  UIColor+RandomColors.m
//  browzine
//
//  Created by Karl Becker on 1/21/14.
//  Copyright (c) 2014 Third Iron. All rights reserved.
//

#import "UIColor+RandomColors.h"

@implementation UIColor (RandomColors)

+ (UIColor *)randomColorWithBrightness:(float)brightnessValue isBelowBrightness:(BOOL)bIsBelowBrightness
{
	CGFloat hue = ( arc4random() % 256 / 256.0 );  //  0.0 to 1.0
	CGFloat saturation = ( arc4random() % 256 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from white
	CGFloat brightness = ( arc4random() % 256 / 256.0 ) + (bIsBelowBrightness ? (-1 * brightnessValue) : brightnessValue);  //  0.5 to 1.0, away from black
	UIColor *color = [UIColor colorWithHue:hue saturation:saturation brightness:brightness alpha:1];
	return color;
}


+ (UIColor *)randomColor
{
	return [UIColor randomColorWithBrightness:0.0 isBelowBrightness:YES];  //no limit to how bright it is
}

+ (UIColor *)randomLightColor
{
	return [UIColor randomColorWithBrightness:0.7 isBelowBrightness:NO];
}

+ (UIColor *)randomDarkColor
{
	return [UIColor randomColorWithBrightness:0.3 isBelowBrightness:YES];
}

+ (UIColor *)randomColorWithBrightnessAbove:(float)fBrightnessPercentageFromZeroToOne
{
	return [UIColor randomColorWithBrightness:fBrightnessPercentageFromZeroToOne isBelowBrightness:NO];
}

+ (UIColor *)randomColorWithBrightnessBelow:(float)fBrightnessPercentageFromZeroToOne
{
	return [UIColor randomColorWithBrightness:fBrightnessPercentageFromZeroToOne isBelowBrightness:YES];
}

@end
