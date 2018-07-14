//
//  signup.h
//  instagram
//
//  Created by Zelalem Tenaw Terefe on 7/9/18.
//  Copyright © 2018 Zelalem Tenaw Terefe. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface signup : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *signusername;
@property (weak, nonatomic) IBOutlet UITextField *signpassword;
@property (weak, nonatomic) IBOutlet UIButton *signup;
-(void) registerUser;

@end
