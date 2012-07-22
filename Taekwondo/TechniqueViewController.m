//
//  TechniqueViewController.m
//  Taekwondo
//
//  Created by jingwen wang on 7/21/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TechniqueViewController.h"
#import "EAGLView.h"

@interface TechniqueViewController ()

@end

@implementation TechniqueViewController

@synthesize glView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
//    EAGLView *myEAGLView = [EAGLView new];
//    
//    self.view = myEAGLView;
//    self.glView = myEAGLView;
    
	// Do any additional setup after loading the view.
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    self.navigationController.navigationBarHidden = NO;
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    //self.glView = [[EAGLView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    
    //[self.view addSubview:glView];
    
    [glView startAnimation];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
