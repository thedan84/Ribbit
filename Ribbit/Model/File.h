//
//  File.h
//  Ribbit
//
//  Created by Amit Bijlani on 8/25/16.
//  Copyright © 2016 Treehouse. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Constants.h"

@interface File : NSObject

@property (weak, nonatomic) NSString *filename;
@property (weak, nonatomic) NSData *data;

+ (instancetype)fileWithName:(NSString*)filename data:(NSData*)fileData;

- (void)saveInBackgroundWithBlock:(BooleanResultBlock)block;
- (NSURL*)fileURL;

@end
