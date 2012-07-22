//
//  FormsViewController.m
//  Taekwondo
//
//  Created by jingwen wang on 7/21/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "FormsViewController.h"

@implementation FormsViewController 

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
}
*/

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}
*/

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    self.navigationController.navigationBarHidden = NO;
}
- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return YES;
}




- (IBAction)playVideo1:(id)sender 
{
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"taeguk1" ofType:@"m4v"];
    NSURL *url = [NSURL fileURLWithPath:path];
    AVPlayer *player = [[AVPlayer alloc] initWithURL:url];
    
    
    AVPlayerLayer *playerLayer = [AVPlayerLayer playerLayerWithPlayer:player];
    playerLayer.bounds = self.view.bounds;
    playerLayer.position = CGPointMake(self.view.bounds.size.width/2., self.view.bounds.size.height/2.);
    
    [self.view.layer addSublayer:playerLayer];
    
    [player play];
    
    
//    NSString *path = [[NSBundle mainBundle] pathForResource:@"test" ofType:@"MOV"];
//    NSURL *url = [NSURL fileURLWithPath:path];
//    
//    MPMoviePlayerController *player = [[MPMoviePlayerController alloc] initWithContentURL:url];
//    [player prepareToPlay];
//    
//    [player.view setFrame:self.view.bounds];  // player's frame must match parent's
//    [self.view addSubview: player.view];
//    
//    [player play];
}

@end
