//
//  LHLSketchData.m
//  PoliceSketch
//
//  Created by Sam Meech-Ward on 2017-10-09.
//  Copyright © 2017 Sam Meech-Ward. All rights reserved.
//

#import "LHLSketchData.h"

@interface LHLSketchData()

@property (nonatomic, strong) NSArray *eyeImages;
@property (nonatomic, strong) NSArray *noseImages;
@property (nonatomic, strong) NSArray *mouthImages;

@property (nonatomic, assign) int eyeIndex;
@property (nonatomic, assign) int noseIndex;
@property (nonatomic, assign) int mouthIndex;

@end

@implementation LHLSketchData

- (instancetype)init
{
    self = [super init];
    if (self) {
        _eyeImages = [self createImageArray:@"eyes"];
        _noseImages = [self createImageArray:@"nose"];
        _mouthImages = [self createImageArray:@"mouth"];
    }
    return self;
}

- (NSArray *)createImageArray:(NSString *)name {
    NSMutableArray *tmpArray = [[NSMutableArray alloc] init];
    for (int i = 1; i <= 5; i++) {
        UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"%@_%i", name, i]];
        [tmpArray addObject:image];
    }
    
    return tmpArray.copy;
}

- (void)setEyeImages:(NSArray *)eyeImages {
    // A whole bunch of custom stuff
    // This relys on something that isn't ready
    NSLog(@"I'm doing custom stuff 🤗");
    _eyeImages = eyeImages;
}

- (UIImage *)nextImage:(FaceSections)faceSection {
    switch (faceSection) {
        case eyes:
            self.eyeIndex++;
            return [self currentImage:faceSection];
        case nose:
            self.noseIndex++;
            return [self currentImage:faceSection];
        case mouth:
            self.mouthIndex++;
            return [self currentImage:faceSection];
    }
}
- (UIImage *)previousImage:(FaceSections)faceSection {
    switch (faceSection) {
        case eyes:
            self.eyeIndex--;
            return [self currentImage:faceSection];
        case nose:
            self.noseIndex--;
            return [self currentImage:faceSection];
        case mouth:
            self.mouthIndex--;
            return [self currentImage:faceSection];
    }
}

- (UIImage *)currentImage:(FaceSections)faceSection {
    switch (faceSection) {
        case eyes:
            return self.eyeImages[self.eyeIndex];
        case nose:
            return self.noseImages[self.noseIndex];
        case mouth:
            return self.mouthImages[self.mouthIndex];
    }
}

@end
