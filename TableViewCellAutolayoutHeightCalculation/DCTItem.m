//
//  DCTItem.m
//  TableViewCellAutolayoutHeightCalculation
//
//  Created by Daniel Tull on 27/06/2013.
//  Copyright (c) 2013 Daniel Tull. All rights reserved.
//

#import "DCTItem.h"

@implementation DCTItem

- (id)initWithName:(NSString *)name date:(NSString *)date text:(NSString *)text {
	self = [self init];
	if (!self) return nil;
	_name = [name copy];
	_date = [date copy];
	_text = [text copy];
	return self;
}

@end
