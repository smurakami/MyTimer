//
//  MyTimer.m
//
//  Created by S.Murakami on 2014/01/14.
//  Copyright (c) 2014年 S.Murakami. All rights reserved.
//

#import "MyTimer.h"

@interface MyTimer()
@property NSDate * start_date;
@property NSDate * prev_date;
@property NSString * title;
@end

@implementation MyTimer
+(id)start
{
    MyTimer * instance = [[MyTimer alloc] init];
    [instance start];
    return instance;
}

+(id)start:(NSString *)string
{
    MyTimer * instance = [[MyTimer alloc] init];
    [instance start:string];
    return instance;
}

-(id)init
{
    self = [super init];
    if (self) {
    }
    return self;
}

-(void)start:(NSString *)string
{
    if(!string){
        string = @"";
    }
    self.start_date = [NSDate date];
    self.prev_date = nil;
    self.title = string;
}

-(void)start
{
    [self start:nil];
}

-(void)rap:(NSString *)string
{
    NSTimeInterval interval = [[NSDate date] timeIntervalSinceDate:self.start_date];
    if(string){
        NSLog(@"MyTimer: rap at %lf sec (%@ - %@)", interval, self.title, string);
    }else{
        NSLog(@"MyTimer: rap at %lf sec (%@)", interval, self.title);
    }
}

-(void)rap
{
    [self rap:nil];
}

-(void)interval:(NSString *)string
{
    NSDate * prev_date;
    if (self.prev_date){
        prev_date = self.prev_date;
    }else{
        prev_date = self.start_date;
    }
    
    NSDate * current_date = [NSDate date];
    NSTimeInterval interval = [current_date timeIntervalSinceDate:prev_date];
    if(string){
        NSLog(@"MyTimer:   interval in %lf sec (%@ - %@)", interval, self.title, string);
    }else{
        NSLog(@"MyTimer:   interval in %lf sec (%@)", interval, self.title);
    }
    self.prev_date = current_date;
}

-(void)interval
{
    [self interval:nil];
}

-(void)finish:(NSString *)string
{
    NSTimeInterval interval = [[NSDate date] timeIntervalSinceDate:self.start_date];
    NSLog(@"MyTimer: finished in %lf sec (%@)", interval, string);
}

-(void)finish
{
    [self finish:self.title];
}

@end
