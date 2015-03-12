//
//  TTWKPieChart example
//  Copyright (c) 2015 TouchTribe B.V. All rights reserved.
//

#import "InterfaceController.h"

#import <TTWKPieChart/TTWKPieChart.h>

@interface InterfaceController()
@property (weak, nonatomic) IBOutlet WKInterfaceImage *chartImage;
@end

@implementation InterfaceController {
	UIImage *_image;
}

- (void)awakeWithContext:(id)context {

    [super awakeWithContext:context];

	TTWKPieChart *pieChart = [[TTWKPieChart alloc] init];

	// Let's keep default colors for the first band
	TTWKPieChartBand *band1 = [[TTWKPieChartBand alloc] init];
	band1.icon = [UIImage imageNamed:@"test-icon-1"];
	band1.caption = @"LOREM";

	// And do a bit of gradient for the second one
	TTWKPieChartBand *band2 = [[TTWKPieChartBand alloc] init];
	band2.icon = [UIImage imageNamed:@"test-icon-2"];
	band2.startColor = [UIColor colorWithRed:0.6275 green:0.9804 blue:0.0510 alpha:1.0];
	band2.endColor = [UIColor colorWithRed:0.8275 green:0.9961 blue:0.0275 alpha:1.0];
	band2.backgroundColor = [UIColor colorWithRed:0.1843 green:0.2667 blue:0.0314 alpha:1.0];
	band2.caption = @"IPSUM";

	// And just plain for the 3rd
	TTWKPieChartBand *band3 = [[TTWKPieChartBand alloc] init];
	band3.icon = [UIImage imageNamed:@"test-icon-3"];
	band3.startColor = [UIColor colorWithRed:0.0275 green:0.8980 blue:0.9765 alpha:1.0];
	band3.backgroundColor = [UIColor colorWithRed:0.0235 green:0.2627 blue:0.2667 alpha:1.0];
	band3.caption = @"DOLOR SIT";

	pieChart.bands = @[ band1, band2, band3 ];

	_image = [pieChart animatedImage];
}

- (void)willActivate {

    [super willActivate];

	[self.chartImage setImage:_image];

	[self.chartImage startAnimatingWithImagesInRange:NSMakeRange(0, _image.images.count) duration:_image.duration repeatCount:0];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

@end



