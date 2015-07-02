//
//  AlphabetTextCollectionViewCell.m
//  Animal_Alphabet
//
//  Created by Kate Polyakova on 6/16/15.
//  Copyright (c) 2015 Kate Polyakova. All rights reserved.
//

#import "AlphabetTextCollectionViewCell.h"
#import "AlphabetItem.h"

@interface AlphabetTextCollectionViewCell ()

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *textLabel;

@end

@implementation AlphabetTextCollectionViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setupWithModel:(AlphabetItem *)model {
    self.imageView.image = [UIImage imageNamed:model.imageName];
    self.textLabel.text = model.itemDescription;
}


@end
