//
//  FormattingPreferencesProxy.m
//  GrowlTunes
//
//  Created by Travis Tilley on 11/24/11.
//  Copyright (c) 2011 The Growl Project. All rights reserved.
//

#import "FormattingPreferencesHelper.h"
#import "macros.h"

#define formattingTypes @"podcast", @"stream", @"show", @"movie", @"musicVideo", @"music"
#define formattingAttributes @"title", @"line1", @"line2", @"line3"


@interface FormattingPreferencesHelper ()

@property(readwrite, retain, atomic) NSMutableDictionary* podcast;
@property(readwrite, retain, atomic) NSMutableDictionary* stream;
@property(readwrite, retain, atomic) NSMutableDictionary* show;
@property(readwrite, retain, atomic) NSMutableDictionary* movie;
@property(readwrite, retain, atomic) NSMutableDictionary* musicVideo;
@property(readwrite, retain, atomic) NSMutableDictionary* music;

-(void)loadDefaults;
-(void)setupSaveOnUpdate;

@end


@implementation FormattingPreferencesHelper

@synthesize podcast = _podcast;
@synthesize stream = _stream;
@synthesize show = _show;
@synthesize movie = _movie;
@synthesize musicVideo = _musicVideo;
@synthesize music = _music;

-(id)init
{
    self = [super init];
    
    _defaults = [NSUserDefaults standardUserDefaults];
    [self loadDefaults];
    [self setupSaveOnUpdate];
    
    return self;
}

-(void)loadDefaults
{
    NSDictionary* format = [_defaults dictionaryForKey:@"format"];
    if (!format) format = [NSDictionary dictionary];
    
    NSArray* types = $array(formattingTypes);
    NSArray* attributes = $array(formattingAttributes);
    
    for (NSString* type in types) {
        NSMutableDictionary* mutableValue;
        NSDictionary* immutableValue = [format objectForKey:type];
        
        if (immutableValue) {
            mutableValue = [immutableValue mutableCopy];
        } else {
            mutableValue = [NSMutableDictionary dictionary];
        }
        
        for (NSString* attribute in attributes) {
            NSMutableArray* mutableAttribute;
            NSArray* immutableAttribute = [mutableValue objectForKey:attribute];
            
            if (immutableAttribute) {
                mutableAttribute = [immutableAttribute mutableCopy];
            } else {
                mutableAttribute = [NSMutableArray array];
            }
            
            [mutableValue setValue:mutableAttribute forKey:attribute];
        }
        
        [self setValue:mutableValue forKey:type];
    }
}

-(void)setupSaveOnUpdate
{
    $depends(@"formattingPreferencesProxy", 
             self, formattingTypes,
             _podcast, formattingAttributes,
             _stream, formattingAttributes,
             _show, formattingAttributes,
             _movie, formattingAttributes,
             _musicVideo, formattingAttributes,
             _music, formattingAttributes,
             ^{
                 NSMutableDictionary* newFormat = [NSMutableDictionary dictionary];
                 NSArray* types = $array(formattingTypes);
                 for (NSString* type in types) {
                     NSMutableDictionary* value = [selff valueForKey:type];
                     [newFormat setValue:value forKey:type];
                 }
                 
                 [_defaults setValue:newFormat forKey:@"format"];
             });
}

@end