//
//  DCTTableViewCell.m
//  TableViewCellAutolayoutHeightCalculation
//
//  Created by Daniel Tull on 27/06/2013.
//  Copyright (c) 2013 Daniel Tull. All rights reserved.
//

#import "DCTTableViewCell.h"

@interface DCTTableViewCell ()
@property (nonatomic, weak) IBOutlet UILabel *nameLabel;
@property (nonatomic, weak) IBOutlet UILabel *dateLabel;
@property (nonatomic, weak) IBOutlet UILabel *bodyLabel;
@end

@implementation DCTTableViewCell

- (CGSize)systemLayoutSizeFittingSize:(CGSize)targetSize {

	CGFloat labelWidth = targetSize.width - 40.0f;
	self.nameLabel.preferredMaxLayoutWidth = labelWidth;
	self.dateLabel.preferredMaxLayoutWidth = labelWidth;
	self.bodyLabel.preferredMaxLayoutWidth = labelWidth;
	
	return [super systemLayoutSizeFittingSize:targetSize];
}

- (void)prepareForReuse {
	[super prepareForReuse];
	self.nameLabel.text = nil;
	self.dateLabel.text = nil;
	self.bodyLabel.text = nil;
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
