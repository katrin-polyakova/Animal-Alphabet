//
//  AlphabetItem.h
//  Animal_Alphabet
//
//  Created by Kate Polyakova on 6/16/15.
//  Copyright (c) 2015 Kate Polyakova. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface AlphabetItem : NSObject
@property (strong, nonatomic) NSString *imageName;
@property (strong, nonatomic) NSString *letter;
@property (strong, nonatomic) NSString *itemDescription;
@property (strong, nonatomic) UIColor *color;

- (instancetype)initWithImageName:(NSString *)imageName letter:(NSString *)letter itemDescription:(NSString *)itemDescription color:(UIColor *)color;

+ (instancetype)itemWithImageName:(NSString *)imageName letter:(NSString *)letter itemDescription:(NSString *)itemDescription color:(UIColor *)color;


@end
