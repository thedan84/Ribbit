//
//  LoginViewController.m
//  Ribbit
//
//  Created by Ben Jakuben on 7/30/13.
//  Copyright (c) 2013 Treehouse. All rights reserved.
//

#import "LoginViewController.h"
#import "User.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.navigationItem.hidesBackButton = YES;
}


- (IBAction)login:(id)sender {
    NSString *username = [self.usernameField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    NSString *password = [self.passwordField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    if ([username length] == 0 || [password length] == 0) {
        
        //Updated to use UIAlertController
        
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Oops!" message:@"Make sure you enter a username and password!" preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil];
        
        [alert addAction:okAction];
        
        [self presentViewController:alert animated:true completion:nil];
        
        
//        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Oops!"
//                                                            message:@"Make sure you enter a username and password!"
//                                                           delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
//        [alertView show];
    }
    else {
        
        User *user = [[NSUserDefaults standardUserDefaults] valueForKey:@"User"];
        
        if (user.username == username && user.password == password) {
            [self.navigationController popToRootViewControllerAnimated:YES];
        } else {
            UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Oops!" message:@"Make sure you enter the correct username and password!" preferredStyle:UIAlertControllerStyleAlert];
            
            UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil];
            
            [alert addAction:okAction];
            
            [self presentViewController:alert animated:true completion:nil];
        }
        
        
//        [PFUser logInWithUsernameInBackground:username password:password block:^(PFUser *user, NSError *error) {
//            if (error) {
//                UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Sorry!"
//                                                                    message:[error.userInfo objectForKey:@"error"]
//                                                                   delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
//                [alertView show];
//            }
//            else {
//            }
//        }];
    }
}

@end
