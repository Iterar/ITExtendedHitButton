//
//  ITExtendedHitButton.m
//  ITExtendedHitButtonExample
//
//  Created by Andre Sousa on 14/04/14.
//  Copyright (c) 2014 Iterar. All rights reserved.
//

#import "ITExtendedHitButton.h"
#import <objc/runtime.h>


@implementation ITExtendedHitButton

+ (instancetype) extendedHitButton {
    return (ITExtendedHitButton *) [ITExtendedHitButton buttonWithType:UIButtonTypeCustom];
}

-(id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if(self){
        [self initialize];
    }
    return self;
}

- (void)initialize
{
    self.hitEdge = 44.0f;
}

- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event {
    CGRect relativeFrame = self.bounds;
    UIEdgeInsets hitTestEdgeInsets = UIEdgeInsetsMake(-self.hitEdge,
                                                      -self.hitEdge,
                                                      -self.hitEdge,
                                                      -self.hitEdge);
    CGRect hitFrame = UIEdgeInsetsInsetRect(relativeFrame, hitTestEdgeInsets);
    return CGRectContainsPoint(hitFrame, point);
}

@end
