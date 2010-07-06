//
//  bugViewController.m
//  EAGLViewBug
//
//  Created by Wylan Werth on 7/5/10.
//  Copyright 2010 BanditBear Games. All rights reserved.
//

#import "bugViewController.h"
#import "cocos2d.h"
#import "HelloWorldScene.h"


@implementation bugViewController
@synthesize glView;

/*
 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
		for (UIView *view in self.view.subviews) {
			CCLOG(@"view class: %@", [view class]);
			if ([view isKindOfClass:[EAGLView class]]) {
				self.glView = view;
			}
		}
		
    }
    return self;
}
*/

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
		
    [super viewDidLoad];
}
*/

-(void)viewWillAppear:(BOOL)animated {
	for (UIView *view in self.view.subviews) {
		if ([view isKindOfClass:[EAGLView class]]) {
			self.glView = (EAGLView *) view;
		}
	}
	
}


// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    //return (interfaceOrientation == UIInterfaceOrientationPortrait);
	return YES;
}


-(void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration
{
	if(toInterfaceOrientation == UIInterfaceOrientationPortrait || toInterfaceOrientation == UIInterfaceOrientationPortraitUpsideDown) {
		glView.frame = CGRectMake(0, 0, 320.0f, 480.0f);
	} else if(toInterfaceOrientation == UIInterfaceOrientationLandscapeLeft || toInterfaceOrientation == UIInterfaceOrientationLandscapeRight) {
		glView.frame = CGRectMake(0, 0, 480.0f, 320.0f);
	}
}

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end
