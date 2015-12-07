//
//  TelegramBot.m
//  Secretary
//
//  Created by Alexander on 01/12/15.
//  Copyright © 2015 Alexander Vorontsov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ConstantsHeader.h"

@interface TelegramBot : NSObject

@property(nonatomic , retain) NSString *accessToken;

-(void)sendTextMessageToUser:(NSString *)telegramChatID withText:(NSString *)messageText;
-(id)init;
+(id)sharedInstance;

@end

@implementation TelegramBot

@synthesize accessToken;

-(id)init {
    if (self = [super init]) {
        accessToken = [[NSUserDefaults standardUserDefaults] stringForKey:kBotTokenString];
    }
    return  self;
        
}

+(id)sharedInstance {
    static TelegramBot *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[TelegramBot alloc] init];
    });
    return sharedInstance;
}


-(void)sendTextMessageToUser:(NSString *)telegramChatID withText:(NSString *)messageText {
    
}


@end