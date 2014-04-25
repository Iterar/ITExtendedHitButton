//
//  ITExtendedHitButton.m
//  ITExtendedHitButtonExample
//
//  Created by Andre Sousa on 14/04/14.
//  Copyright (c) 2014 Iterar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ITExtendedHitButton : UIButton

+ (instancetype) extendedHitButton;

- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event;

@property (nonatomic) float hitEdge;

@end
