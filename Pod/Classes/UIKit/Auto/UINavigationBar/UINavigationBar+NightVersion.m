//
//  UINavigationBar+NightVersion.m
//  UINavigationBar+NightVersion
//
//  Copyright (c) 2015 Draveness. All rights reserved.
//
//  These files are generated by ruby script, if you want to modify code
//  in this file, you are supposed to update the ruby code, run it and 
//  test it. And finally open a pull request.

#import "UINavigationBar+NightVersion.h"
#import "UIView+NightVersion.h"
#import "DKNightVersionManager.h"
#import "DKNightVersionConstants.h"

@implementation UINavigationBar (NightVersion)

#pragma mark - TransformColor

- (void)transformColor {
    [super transformColor];
    [UIView animateWithDuration:NIGHT_ANIMATION_DURATION animations:^{
        [self setBarTintColor:([DKNightVersionManager currentThemeVersion] == DKThemeVersionNight) ? self.nightBarTintColor : self.normalBarTintColor];
    }];
}

@end
