//
// Created by Kate Polyakova on 6/16/15.
// Copyright (c) 2015 Kate Polyakova. All rights reserved.
//

#import <Foundation/Foundation.h>

@class AlphabetItem;

@protocol ModelConsumer <NSObject>

- (void)setupWithModel:(AlphabetItem *)model;

@end