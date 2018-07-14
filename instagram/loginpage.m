//
//  loginpage.m
//  instagram
//
//  Created by Zelalem Tenaw Terefe on 7/9/18.
//  Copyright © 2018 Zelalem Tenaw Terefe. All rights reserved.
//

#import "loginpage.h"
#import "Parse.h"
@interface loginpage ()

@end

@implementation loginpage

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)loginuser:(id)sender {
    [self loginu];

}



-(void) loginu{
    NSString *username = self.username.text;
    NSString *password = self.password.text;
    
    [PFUser logInWithUsernameInBackground:username password:password block:^(PFUser * user, NSError *  error) {
        if (error != nil) {
            NSLog(@"User log in failed: %@", error.localizedDescription);
        } else {
            NSLog(@"User logged in successfully");
            [self performSegueWithIdentifier:@"firstsuage" sender:nil];
            // display view controller that needs to shown after successful login
            
        }
    }];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
