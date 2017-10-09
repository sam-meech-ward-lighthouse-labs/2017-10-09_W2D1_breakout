//
//  ViewController.m
//  PoliceSketch
//
//  Created by Sam Meech-Ward on 2017-10-09.
//  Copyright © 2017 Sam Meech-Ward. All rights reserved.
//

#import "LHLViewController.h"
#import "LHLSketchData.h"

@interface LHLViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *eyeImageView;
@property (weak, nonatomic) IBOutlet UIImageView *noseImageView;
@property (weak, nonatomic) IBOutlet UIImageView *mouthImageView;
@property (nonatomic, strong) LHLSketchData *sketchData;

@end

@implementation LHLViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.sketchData = [[LHLSketchData alloc] init];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)previousImage:(UIButton *)sender {
    switch (sender.tag) {
        case 1:
            // eyes
            break;
        case 2:
            // nose
            break;
        case 3:
            // mouth
            break;
            
        default:
            break;
    }
}

- (IBAction)nextImage:(UIButton *)sender {
    switch (sender.tag) {
        case 1:
            // eyes
            self.eyeImageView.image = [self.sketchData nextImage:eyes];
            break;
        case 2:
            // nose
            self.noseImageView.image = [self.sketchData nextImage:nose];
            break;
        case 3:
            // mouth
            self.mouthImageView.image = [self.sketchData nextImage:mouth];
            break;
            
        default:
            break;
    }
}

@end
