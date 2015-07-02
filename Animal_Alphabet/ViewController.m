//
//  ViewController.m
//  Animal_Alphabet
//
//  Created by Kate Polyakova on 6/15/15.
//  Copyright (c) 2015 Kate Polyakova. All rights reserved.
//

#import "ViewController.h"
#import "AlphabetItem.h"
#import "ModelConsumer.h"

@interface ViewController () <UICollectionViewDataSource, UICollectionViewDelegate>
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@property(nonatomic, strong) NSArray *data;
@property(nonatomic) BOOL modeText;
@property(nonatomic, strong) id cellSizes;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.data = [[NSArray alloc] init];
    [self prepareData];

    self.collectionView.delegate = self;
    self.collectionView.dataSource = self;
    self.collectionView.backgroundColor = [UIColor whiteColor];

    [self setupCellSizes];
    [self setupCollectionLayout:0];

    [self.collectionView registerNib:[UINib nibWithNibName:@"AlphabetCollectionViewCell" bundle:nil] forCellWithReuseIdentifier:@"image_cell"];
    [self.collectionView registerNib:[UINib nibWithNibName:@"AlphabetTextCollectionViewCell" bundle:nil] forCellWithReuseIdentifier:@"text_cell"];
}

- (void)setupCollectionLayout:(NSUInteger)sizeIndex {
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    CGSize size = [self.cellSizes[sizeIndex] CGSizeValue];
    layout.itemSize = size;
    layout.scrollDirection = UICollectionViewScrollDirectionVertical;
    [self.collectionView setCollectionViewLayout:layout animated:YES];
}

- (void)setupCellSizes {
    CGSize small = CGSizeMake(70, 70);
    CGSize medium = CGSizeMake(130, 130);
    CGSize large = CGSizeMake(280, 280);

    self.cellSizes = @[ [NSValue valueWithCGSize:small], [NSValue valueWithCGSize:medium], [NSValue valueWithCGSize:large] ];
}

- (void)prepareData {

    NSMutableArray *array = [[NSMutableArray alloc] init];
    [array addObject:[[AlphabetItem alloc] initWithImageName:@"ant.jpg" letter:@"A" itemDescription:@"Amazing Ant Acting" color:[UIColor blueColor]]];
    [array addObject:[[AlphabetItem alloc] initWithImageName:@"bear.jpeg" letter:@"B" itemDescription:@"Big Bear Bowling" color:[UIColor blueColor]]];
    [array addObject:[[AlphabetItem alloc] initWithImageName:@"cat.jpg" letter:@"C" itemDescription:@"Creative Cat Colouring" color:[UIColor blueColor]]];
    [array addObject:[[AlphabetItem alloc] initWithImageName:@"dog.jpg" letter:@"D" itemDescription:@"Dainty Dog Dancing" color:[UIColor blueColor]]];
    [array addObject:[[AlphabetItem alloc] initWithImageName:@"elephant.jpg" letter:@"E" itemDescription:@"Exited Elephant Exploding" color:[UIColor blueColor]]];
    [array addObject:[[AlphabetItem alloc] initWithImageName:@"fish.jpeg" letter:@"F" itemDescription:@"Fierce Fish Fighting" color:[UIColor blueColor]]];
    [array addObject:[[AlphabetItem alloc] initWithImageName:@"giraffe.jpeg" letter:@"G" itemDescription:@"Graceful Giraffe Galloping" color:[UIColor blueColor]]];
    [array addObject:[[AlphabetItem alloc] initWithImageName:@"hippo.jpeg" letter:@"H" itemDescription:@"Horrid Hippo Hiding" color:[UIColor blueColor]]];
    [array addObject:[[AlphabetItem alloc] initWithImageName:@"insect.jpg" letter:@"I" itemDescription:@"Irritated Insect Identifying" color:[UIColor blueColor]]];
    [array addObject:[[AlphabetItem alloc] initWithImageName:@"jaguar.png" letter:@"J" itemDescription:@"Joyful Jaguar Jumping" color:[UIColor blueColor]]];
    [array addObject:[[AlphabetItem alloc] initWithImageName:@"kangaroo.jpeg" letter:@"K" itemDescription:@"Kind Kangaroo Knitting" color:[UIColor blueColor]]];
    [array addObject:[[AlphabetItem alloc] initWithImageName:@"lemur.jpg" letter:@"L" itemDescription:@"Loopy Lemur Laughing" color:[UIColor blueColor]]];
    [array addObject:[[AlphabetItem alloc] initWithImageName:@"mouse.png" letter:@"M" itemDescription:@"Muddled Mouse Mixing" color:[UIColor blueColor]]];
    [array addObject:[[AlphabetItem alloc] initWithImageName:@"newt.jpeg" letter:@"N" itemDescription:@"Naughty Newt Nipping" color:[UIColor blueColor]]];
    [array addObject:[[AlphabetItem alloc] initWithImageName:@"owl.jpeg" letter:@"O" itemDescription:@"Old Own Ooooing" color:[UIColor blueColor]]];
    [array addObject:[[AlphabetItem alloc] initWithImageName:@"penguin.jpeg" letter:@"P" itemDescription:@"Posh Penguin Posing" color:[UIColor blueColor]]];
    [array addObject:[[AlphabetItem alloc] initWithImageName:@"quail.jpeg" letter:@"Q" itemDescription:@"Quick Quail Quarrelling" color:[UIColor blueColor]]];
    [array addObject:[[AlphabetItem alloc] initWithImageName:@"rhino.jpeg" letter:@"R" itemDescription:@"Round Rhino Rolling" color:[UIColor blueColor]]];
    [array addObject:[[AlphabetItem alloc] initWithImageName:@"sloth.jpeg" letter:@"S" itemDescription:@"Slow Sloth Sleeping" color:[UIColor blueColor]]];
    [array addObject:[[AlphabetItem alloc] initWithImageName:@"tiger.jpeg" letter:@"T" itemDescription:@"Tame Tiger Teaching" color:[UIColor blueColor]]];
    [array addObject:[[AlphabetItem alloc] initWithImageName:@"unicorn.jpeg" letter:@"U" itemDescription:@"Unique Unicorn Unicycling" color:[UIColor blueColor]]];
    [array addObject:[[AlphabetItem alloc] initWithImageName:@"vulture.jpeg" letter:@"V" itemDescription:@"Violet Vulture Voting" color:[UIColor blueColor]]];
    [array addObject:[[AlphabetItem alloc] initWithImageName:@"warthog.jpeg" letter:@"W" itemDescription:@"Wimpy Warthog Whining" color:[UIColor blueColor]]];
    [array addObject:[[AlphabetItem alloc] initWithImageName:@"x-ray fish.jpeg" letter:@"X" itemDescription:@"(E)Xcellent X-ray fish Xylophoning" color:[UIColor blueColor]]];
    [array addObject:[[AlphabetItem alloc] initWithImageName:@"yak.jpeg" letter:@"Y" itemDescription:@"Yellow Yak Yelping" color:[UIColor blueColor]]];
    [array addObject:[[AlphabetItem alloc] initWithImageName:@"zebra.jpeg" letter:@"Z" itemDescription:@"Zig-zag Zebra Zipping" color:[UIColor blueColor]]];

    self.data = array;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.data.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell<ModelConsumer> *cell;

    NSString *identifier = self.modeText ? @"text_cell" : @"image_cell";
    cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    AlphabetItem *item = self.data [(NSUInteger)indexPath.item];
    [cell setupWithModel:item];

    return cell;
}

- (IBAction)modeTapped:(UIButton *)sender {
    sender.selected = !sender.selected;
    self.modeText = sender.selected;
    [self.collectionView reloadData];
}

- (IBAction)sizeSelected:(UISegmentedControl *)sender {
    [self setupCollectionLayout: (NSUInteger)sender.selectedSegmentIndex];
}

@end