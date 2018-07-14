//
//  loginpage.h
//  instagram
//
//  Created by Zelalem Tenaw Terefe on 7/9/18.
//  Copyright © 2018 Zelalem Tenaw Terefe. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface loginpage : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *username;
@property (weak, nonatomic) IBOutlet UITextField *password;
@property (weak, nonatomic) IBOutlet UIButton *loginbutton;

-(void) loginu;
@end
