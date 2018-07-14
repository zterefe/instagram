//
//  signup.m
//  instagram
//
//  Created by Zelalem Tenaw Terefe on 7/9/18.
//  Copyright © 2018 Zelalem Tenaw Terefe. All rights reserved.
//

#import "signup.h"
#import "Parse.h"

@interface signup ()

@end

@implementation signup

- (void)viewDidLoad {
    [super viewDidLoad];
   
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)signup:(id)sender {
     [self registerUser];
}
- (void)registerUser {
    // initialize a user object
    PFUser *newUser = [PFUser user];
    
    // set user properties
    newUser.username = self.signusername.text;
    newUser.password = self.signpassword.text;
    
    // call sign up function on the object
    [newUser signUpInBackgroundWithBlock:^(BOOL succeeded, NSError * error) {
        if (error != nil) {
            NSLog(@"Error: %@", error.localizedDescription);
        } else {
            NSLog(@"User registered successfully");
            
            //[self performSegueWithIdentifier:@"firstsegue" sender:nil];
            // manually segue to logged in view
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
