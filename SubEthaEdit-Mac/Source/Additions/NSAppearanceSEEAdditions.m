//  NSAppearanceSEEAdditions.m
//  SubEthaEdit
//
//  Created by dom on 10.10.18.

#import "NSAppearanceSEEAdditions.h"

@implementation NSApplication (NSAppearanceSEEAdditions)

- (BOOL)SEE_effectiveAppearanceIsDark {
    BOOL result = NO;
    if (@available(macOS 10.14, *)) {
        result = self.effectiveAppearance.SEE_isDark;
    }
    return result;
}

@end

@implementation NSAppearance (NSAppearanceSEEAdditions)

- (BOOL)SEE_isDark {
    BOOL result = NO;
    
    if (@available(macOS 10.14, *)) {
        if ([[self bestMatchFromAppearancesWithNames:@[NSAppearanceNameDarkAqua, NSAppearanceNameAqua]] isEqualToString:NSAppearanceNameDarkAqua]) {
            result = YES;
        }
    }
    return result;
}

@end
