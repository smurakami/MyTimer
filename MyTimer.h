//
//  MyTimer.h
//
//  Created by S.Murakami on 2014/01/14.
//  Copyright (c) 2014年 S.Murakami. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyTimer : NSObject
+(id)start:(NSString *)format;
+(id)start;
-(id)init;
-(void)start:(NSString *)format;
-(void)start;
-(void)rap:(NSString *)string;
-(void)rap;
-(void)interval:(NSString *)string;
-(void)interval;
-(void)finish;
-(void)finish:(NSString *)format;
@end
