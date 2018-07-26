/*
 Copyright (C) 2017 Apple Inc. All Rights Reserved.
 See LICENSE.txt for this sample’s licensing information
 
 Abstract:
 The singular data source for the table view controller.
 */

@import Foundation;
#import "Item.h"

@interface DataSource : NSObject

+ (DataSource *)sharedInstance;

- (NSInteger)count;

- (void)addItem:(Item *)item;
- (Item *)itemAtIndex:(NSInteger)index;
- (void)removeItemAtIndex:(NSInteger)index;
- (void)insertItem:(Item *)item atIndex:(NSInteger)index;
- (void)replaceItemAtIndex:(NSInteger)index withObject:(Item *)item;

- (Item *)itemWithIdentifier:(NSString *)identifier;
- (NSIndexPath *)indexPathForItem:(Item *)item;

- (void)save;

@end
