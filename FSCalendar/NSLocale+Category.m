//
//  NSLocale+Category.m
//  FSCalendar
//
//  Created by Hussein Habibi Juybari on 10/10/18.
//  Copyright © 2018 wenchaoios. All rights reserved.
//

#import "NSLocale+Category.h"

@implementation NSLocale(Category)

-(BOOL) isRtlLocale {
    NSString *langCode = self.languageCode;
    NSLocaleLanguageDirection langDirction = NSLocaleLanguageDirectionLeftToRight;
    
    if (langCode) {
        langDirction = [NSLocale characterDirectionForLanguage:langCode];
    }
    return langDirction;
}

@end
