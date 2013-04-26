//
//  MyAnnotation.m
//  MapTest
//
//  Created by Peter Pan on 4/25/13.
//  Copyright (c) 2013 Peter Pan. All rights reserved.
//

#import "MyAnnotation.h"

@implementation MyAnnotation

@synthesize title;
@synthesize subtitle;
@synthesize coordinate;

-(id)initWithCoordinate:(CLLocationCoordinate2D)argCoordinate title:(NSString*)argTitle subtitle:(NSString*)argSubtitle
{
    self = [super init];
    if(self)
    {
        coordinate = argCoordinate;
        title = argTitle;
        subtitle = argSubtitle;
    }
    return self;
}

@end
