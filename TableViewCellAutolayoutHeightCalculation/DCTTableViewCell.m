//
//  DCTTableViewCell.m
//  TableViewCellAutolayoutHeightCalculation
//
//  Created by Daniel Tull on 27/06/2013.
//  Copyright (c) 2013 Daniel Tull. All rights reserved.
//

#import "DCTTableViewCell.h"

@interface DCTTableViewCell ()
@property (nonatomic, weak) IBOutlet UIImageView *avatarImageView;
@property (nonatomic, weak) IBOutlet UILabel *nameLabel;
@property (nonatomic, weak) IBOutlet UILabel *dateLabel;
@property (nonatomic, weak) IBOutlet UILabel *bodyLabel;
@end

@implementation DCTTableViewCell

- (void)prepareForReuse {
	[super prepareForReuse];
	self.avatarImageView.image = nil;
	self.nameLabel.text = nil;
	self.dateLabel.text = nil;
	self.bodyLabel.text = nil;
}

- (void)setUserImage:(UIImage *)image {
	self.avatarImageView.image = image;
}

- (void)setName:(NSString *)name {
	self.nameLabel.text = name;
}

- (void)setDate:(NSString *)date {
	self.dateLabel.text = date;
}

- (void)setBody:(NSString *)body {
	self.bodyLabel.text = body;
}

@end