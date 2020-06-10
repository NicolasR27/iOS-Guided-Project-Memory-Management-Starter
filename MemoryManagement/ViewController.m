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

    
    
    NSLog(@"Hi");
    
    NSString *name = [[NSString alloc]initWithString:@"nick"];
    [name retain];
    [name retain];
    
    [name release];

    
   
    [name release];
    NSLog(@"Name:%@",name.description);
    name = nil;
    
    NSMutableArray *colors =[[NSMutableArray alloc]init];
    NSLog(@"colors:%@",colors);
    
    NSString *favoriteColor = [[NSString alloc]initWithString:@"Blue"];
    [colors  addObject:favoriteColor];
    [favoriteColor release];
    
    
    NSString *color2=[[[NSString alloc]initWithString:@"Red"]autorelease];
    [colors addObject:color2];
    [colors release];
     colors = nil;
    
    
    Car *honda =[[[Car alloc] initWithMake:@"Civic"] autorelease];
    
    Person *person =[[Person alloc]initWithCar:honda];
    [honda release];
    
    person.car = honda;
    
    Car *subaru =[[Car alloc] initWithMake:@"Forester"];
    person.car = subaru;
    [subaru release];
   
    person.car =subaru;
    
 //   self.person = person;
    
    [person release];
    person = nil;
}


@end
