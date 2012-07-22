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
    NSString *resourcePath = [[NSBundle mainBundle] resourcePath];
    NSString *filename = [resourcePath stringByAppendingPathComponent:@"taeguk1.mp4"];
    NSURL *pathURL = [NSURL URLWithString:filename];
    
    MPMoviePlayerController *mp = [[MPMoviePlayerController alloc] initWithContentURL:pathURL];
    
    [mp prepareToPlay];
    [mp play];

}

@end
