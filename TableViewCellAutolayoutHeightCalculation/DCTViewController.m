//
//  DCTViewController.m
//  TableViewCellAutolayoutHeightCalculation
//
//  Created by Daniel Tull on 27/06/2013.
//  Copyright (c) 2013 Daniel Tull. All rights reserved.
//

#import "DCTViewController.h"
#import "DCTTableViewCell.h"
#import "DCTItem.h"

@interface DCTViewController ()
@property (nonatomic) NSArray *items;
@property (nonatomic) NSString *cellIdentifier;
@property (nonatomic) DCTTableViewCell *sizingCell;
@end

@implementation DCTViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	self.cellIdentifier = NSStringFromClass([DCTTableViewCell class]);
	self.items = @[
		[[DCTItem alloc] initWithName:@"Simon Wolf" date:@"5:10 PM - 27 Jun 13" text:@"I hope @mikeabdullah has found some wellies or at least some plastic bags to stylishly wrap over his shoes. #glasto"],
		[[DCTItem alloc] initWithName:@"Chris Walters" date:@"6:27 PM - 27 Jun 13" text:@"@sgaw @mikeabdullah BBQ’ing in the rain so I can feel like I am at Glastonbury"],
		[[DCTItem alloc] initWithName:@"Pete Callaway" date:@"7:32 PM - 27 Jun 13" text:@"@chwalters would you like me to come round and take a widdle against your house for added authenticity? /cc @sgaw"],
		[[DCTItem alloc] initWithName:@"Chris Walters" date:@"7:59 PM - 27 Jun 13" text:@"@Dative @sgaw @mikeabdullah good plan"],
		[[DCTItem alloc] initWithName:@"Simon Wolf" date:@"8:03 PM - 27 Jun 13" text:@"@chwalters I wish you were here providing camping and catering services! /cc @Dative @mikeabdullah"],
		[[DCTItem alloc] initWithName:@"Chris Walters" date:@"10:16 PM - 27 Jun 13" text:@"@sgaw Find @mikeabdullah he's got a stove and knows how to use it /cc @Dative"]
	];
}

- (void)configureCell:(DCTTableViewCell *)cell forIndexPath:(NSIndexPath *)indexPath {
	DCTItem *item = self.items[indexPath.row];
	[cell setName:item.name];
	[cell setBody:item.text];
	[cell setDate:item.date];
}

- (DCTTableViewCell *)sizingCell {

	if (!_sizingCell)
		_sizingCell = [self.tableView dequeueReusableCellWithIdentifier:self.cellIdentifier];

	return _sizingCell;
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.items.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	
    DCTTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:self.cellIdentifier forIndexPath:indexPath];
    [self configureCell:cell forIndexPath:indexPath];
    return cell;
}

#pragma mark - UITableViewDelegate

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
	[self configureCell:self.sizingCell forIndexPath:indexPath];
	CGSize layoutSize = [self.sizingCell systemLayoutSizeFittingSize:CGSizeMake(tableView.bounds.size.width, CGFLOAT_MAX)];
	return layoutSize.height;
}

@end
