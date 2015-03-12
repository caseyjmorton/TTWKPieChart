//
//  TTWKPieChart example
//  Copyright (c) 2015 TouchTribe B.V. All rights reserved.
//

#import "TTWKViewController.h"

#import <TTWKPieChart/TTWKPieChart.h>

@interface TTWKViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@end

@implementation TTWKViewController

- (void)viewDidLoad {

    [super viewDidLoad];

	//
	// Unlike the WatchKit example we are not using background colors here.
	// Note that there is no much need to have this control as an image in regular
	// apps though, this is just for the demo
	//

	TTWKPieChart *pieChart = [[TTWKPieChart alloc] init];

	// Let's have it smaller for the phone, like a little widget
	pieChart.radius = 50;
	// And add a bit more spacing
	pieChart.bandSpacing = 4;

	TTWKPieChartBand *band1 = [[TTWKPieChartBand alloc] init];
	band1.caption = @"LOREM";
	band1.icon = [UIImage imageNamed:@"test-icon-1"];
	band1.startColor = [UIColor colorWithRed:1.0000 green:0.0941 blue:0.0392 alpha:1.0];
	band1.endColor = [UIColor colorWithRed:1.0000 green:0.0275 blue:0.6392 alpha:1.0];
	band1.value = 0.5;

	TTWKPieChartBand *band2 = [[TTWKPieChartBand alloc] init];
	band2.caption = @"IPSUM";
	band2.icon = [UIImage imageNamed:@"test-icon-2"];
	band2.startColor = [UIColor colorWithRed:0.0275 green:0.8980 blue:0.9765 alpha:1.0];
	band2.endColor = [UIColor colorWithRed:0.0314 green:0.9961 blue:0.9059 alpha:1.0];
	band2.value = 0.7;

	pieChart.bands = @[ band1, band2 ];

	UIImage *animatedImage = [pieChart animatedImage];

	// Note that using self.imageView.image with the animated image would lead to infinite animation

	self.imageView.animationImages = animatedImage.images;
	self.imageView.animationDuration = animatedImage.duration;
	self.imageView.animationRepeatCount = 1;

	// When the animation completes the final image will remain
	self.imageView.image = [pieChart image];
}

- (void)viewDidAppear:(BOOL)animated {
	[super viewDidAppear:animated];

	[self.imageView startAnimating];
}

@end
