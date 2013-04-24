//
//  ViewController.m
//  MapTest
//
//  Created by Peter Pan on 4/24/13.
//  Copyright (c) 2013 Peter Pan. All rights reserved.
//

#import "ViewController.h"
#import <MapKit/MapKit.h>
#import "MyAnnotation.h"

@interface ViewController () <MKMapViewDelegate>
{
    CLLocationCoordinate2D coordinate101;
}
@property (weak, nonatomic) IBOutlet MKMapView *testMapView;


@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    coordinate101 = CLLocationCoordinate2DMake(25.033408, 121.564099);
    MyAnnotation *annotation = [[MyAnnotation alloc] initWithCoordinate:coordinate101 title:@"台北101" subtitle:@"信義誠品隔壁"];
    [self.testMapView addAnnotation:annotation];

    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - MKMapViewDelegate

-(void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation
{
    MKCoordinateRegion region;
    region.center = userLocation.coordinate;
    region.span = MKCoordinateSpanMake(ABS(coordinate101.latitude-userLocation.coordinate.latitude)*2, ABS(coordinate101.longitude-userLocation.coordinate.longitude)*2);
    self.testMapView.region = region;

}

@end
