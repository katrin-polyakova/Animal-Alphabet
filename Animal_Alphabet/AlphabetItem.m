//
//  AlphabetItem.m
//  Animal_Alphabet
//
//  Created by Kate Polyakova on 6/16/15.
//  Copyright (c) 2015 Kate Polyakova. All rights reserved.
//

#import "AlphabetItem.h"

@implementation AlphabetItem {}
- (instancetype)initWithImageName:(NSString *)imageName letter:(NSString *)letter itemDescription:(NSString *)itemDescription color:(UIColor *)color {
    self = [super init];
    if (self) {
        self.imageName = imageName;
        self.letter = letter;
        self.itemDescription = itemDescription;
        self.color = color;
    }

    return self;
}

+ (instancetype)itemWithImageName:(NSString *)imageName letter:(NSString *)letter itemDescription:(NSString *)itemDescription color:(UIColor *)color {
    return [[self alloc] initWithImageName:imageName letter:letter itemDescription:itemDescription color:color];
}


@end
