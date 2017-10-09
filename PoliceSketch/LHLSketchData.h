//
//  LHLSketchData.h
//  PoliceSketch
//
//  Created by Sam Meech-Ward on 2017-10-09.
//  Copyright © 2017 Sam Meech-Ward. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, FaceSections) {
    eyes,
    nose,
    mouth,
};

@interface LHLSketchData : NSObject

- (UIImage *)nextImage:(FaceSections)faceSection;
- (UIImage *)previousImage:(FaceSections)faceSection;
- (UIImage *)currentImage:(FaceSections)faceSection;

@end
