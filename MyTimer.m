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
    self.start_date = [NSDate date];
    self.prev_date = nil;
    self.title = string;
}

-(void)start
{
    [self start:@""];
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
    [self rap:Nil];
}

-(void)interval:(NSString *)string
{
    NSTimeInterval interval = [[NSDate date] timeIntervalSinceDate:self.start_date];
    if(string){
        NSLog(@"MyTimer: rap at %lf sec (%@ - %@)", interval, self.title, string);
    }else{
        NSLog(@"MyTimer: rap at %lf sec (%@)", interval, self.title);
    }
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
