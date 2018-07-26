/*
 Copyright (C) 2017 Apple Inc. All Rights Reserved.
 See LICENSE.txt for this sample’s licensing information
 
 Abstract:
 The backing object used in representing each item in the table view controller.
 */

@import Foundation;

@interface Item : NSObject

@property (nonatomic, strong) NSString *identifier;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *notes;

- (id)initWithTitle:(NSString *)title notes:(NSString *)notes;

@end
