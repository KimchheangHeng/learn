/*
 Copyright (C) 2017 Apple Inc. All Rights Reserved.
 See LICENSE.txt for this sample’s licensing information
 
 Abstract:
 The backing object used in representing each item in the table view controller.
 */

#import "Item.h"

@implementation Item

- (NSArray *)keysForEncoding;
{
    return [NSArray arrayWithObjects:@"title", @"notes", @"identifier", nil];
}

- (id)initWithTitle:(NSString *)title notes:(NSString *)notes
{
    self = [super init];
    if (self)
    {
        self.title = title;
        self.notes = notes;
        
        // create a unique identifier for this object, helps with state restoration
        NSUUID *uuid = [[NSUUID alloc] init];
        self.identifier = [uuid UUIDString];
    }
    return self;
}

// we are being created based on what was archived earlier
- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];
    if (self)
    {
        for (NSString *key in self.keysForEncoding)
        {
            [self setValue:[aDecoder decodeObjectForKey:key] forKey:key];
        }
    }
    return self;
}

// we are asked to be archived, encode all our data
- (void)encodeWithCoder:(NSCoder *)aCoder
{
	for (NSString *key in self.keysForEncoding)
    {
        [aCoder encodeObject:[self valueForKey:key] forKey:key];
    }
}

@end
