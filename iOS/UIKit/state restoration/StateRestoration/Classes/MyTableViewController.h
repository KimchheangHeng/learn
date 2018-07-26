/*
 Copyright (C) 2017 Apple Inc. All Rights Reserved.
 See LICENSE.txt for this sample’s licensing information
 
 Abstract:
 The table view controller for managing the list of items.
 */

@import UIKit;
#import "MyViewController.h"

@interface MyTableViewController : UITableViewController
                                       <UIDataSourceModelAssociation,
                                        MyViewControllerDelegate,
                                        UIActionSheetDelegate>
@end
