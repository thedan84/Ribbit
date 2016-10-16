//
//  InboxViewController.h
//  Ribbit
//
//  Copyright (c) 2013 Treehouse. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVKit/AVKit.h>
#import <AVFoundation/AVFoundation.h>
#import "User.h"
//#import <MediaPlayer/MediaPlayer.h>

@class Message;

@interface InboxViewController : UITableViewController

@property (nonatomic, strong) Message *selectedMessage;
//Updated to use AVPlayer
@property (nonatomic, strong) AVPlayer *moviePlayer;

//Updated so the correct VC shows up at launch
@property (nonatomic, strong) User *currentUser;

- (IBAction)logout:(id)sender;

@end
