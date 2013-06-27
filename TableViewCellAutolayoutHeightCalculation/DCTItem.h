//
//  DCTItem.h
//  TableViewCellAutolayoutHeightCalculation
//
//  Created by Daniel Tull on 27/06/2013.
//  Copyright (c) 2013 Daniel Tull. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DCTItem : NSObject

- (id)initWithName:(NSString *)name date:(NSString *)date text:(NSString *)text;
@property (nonatomic, readonly) NSString *name;
@property (nonatomic, readonly) NSString *date;
@property (nonatomic, readonly) NSString *text;

@end
