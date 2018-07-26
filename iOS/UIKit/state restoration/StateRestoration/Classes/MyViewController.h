/*
 Copyright (C) 2017 Apple Inc. All Rights Reserved.
 See LICENSE.txt for this sample’s licensing information
 
 Abstract:
 The detail view controller for editing the title and notes of an item.
 */

@import UIKit;

@class Item, MyViewController;

@protocol MyViewControllerDelegate;

@interface MyViewController : UIViewController

@property (nonatomic, strong) Item *item;
@property (nonatomic, weak) id <MyViewControllerDelegate> delegate;

@end

@protocol MyViewControllerDelegate <NSObject>
@required
- (void)editHasEnded:(MyViewController *)viewController withItem:(Item *)item;
@end

