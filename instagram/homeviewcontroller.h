//
//  homeviewcontroller.h
//  instagram
//
//  Created by Zelalem Tenaw Terefe on 7/10/18.
//  Copyright © 2018 Zelalem Tenaw Terefe. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface homeviewcontroller : UIViewController
@property (weak, nonatomic) IBOutlet UIBarButtonItem *logoutb;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *photo;
@property (weak, nonatomic) IBOutlet UITableView *tableview;
//- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info;
@property UIRefreshControl * refreshcontrol;
@property NSArray *post;
-(void) fecth;


@end
