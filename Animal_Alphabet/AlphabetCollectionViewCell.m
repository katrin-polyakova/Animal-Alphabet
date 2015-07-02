//
//  AlphabetCollectionViewCell.m
//  Animal_Alphabet
//
//  Created by Kate Polyakova on 6/16/15.
//  Copyright (c) 2015 Kate Polyakova. All rights reserved.
//

#import "AlphabetCollectionViewCell.h"
#import "AlphabetItem.h"

@interface AlphabetCollectionViewCell ()

@property (weak, nonatomic) IBOutlet UILabel *letterLabel;
@property (weak, nonatomic) IBOutlet UIImageView *letterImage;

@end

@implementation AlphabetCollectionViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setupWithModel:(AlphabetItem *)model {
    self.letterLabel.text = model.letter;
    self.letterLabel.textColor = model.color;
    self.letterImage.image = [UIImage imageNamed:model.imageName];

}


@end
