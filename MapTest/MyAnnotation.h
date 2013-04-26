//
//  MyAnnotation.h
//  MapTest
//
//  Created by Peter Pan on 4/25/13.
//  Copyright (c) 2013 Peter Pan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface MyAnnotation : NSObject <MKAnnotation>

-(id)initWithCoordinate:(CLLocationCoordinate2D)argCoordinate title:(NSString*)argTitle subtitle:(NSString*)argSubtitle;


@end
