//
//  ViewController.m
//  MemoryManagement
//
//  Created by Paul Solt on 1/29/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import "ViewController.h"
#import "Car.h"
#import "Person.h"
#import "LSILog.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    // TODO: Disable ARC in settings
    
    NSLog(@"Hi");
    
    NSString *name = [[NSString alloc]initWithString:@"nick"];
    [name retain];
    [name retain];
    
    [name release];
    [name release];
    
   
    [name release];
    NSLog(@"Name:%@",name.description);
    name = nil;
    
    NSMutableArray *colors =[[NSMutableArray alloc]init];
    NSLog(@"colors:%@",colors);
    
    NSString *favoriteColor = [[NSString alloc]initWithString:@"Blue"];
    [colors  addObject:favoriteColor];
    [favoriteColor release];
    
    
    [colors release];
     colors = nil;
    
}


@end
