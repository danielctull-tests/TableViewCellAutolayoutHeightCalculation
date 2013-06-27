//
//  DCTTableViewCell.h
//  TableViewCellAutolayoutHeightCalculation
//
//  Created by Daniel Tull on 27/06/2013.
//  Copyright (c) 2013 Daniel Tull. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DCTTableViewCell : UITableViewCell

- (void)setUserImage:(UIImage *)image;
- (void)setName:(NSString *)name;
- (void)setDate:(NSString *)date;
- (void)setBody:(NSString *)body;

@end
