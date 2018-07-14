//
//  detaillviewcontroller.h
//  instagram
//
//  Created by Zelalem Tenaw Terefe on 7/13/18.
//  Copyright © 2018 Zelalem Tenaw Terefe. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Photoviewcontroller.h"
#import "Post.h"
#import <ParseUI/ParseUI.h>

@interface detaillviewcontroller : UIViewController
@property (weak, nonatomic) IBOutlet PFImageView *imageclip;

@property (weak, nonatomic) IBOutlet UILabel *captionclip;
@property (strong, nonatomic) Post * popo;
@property (weak, nonatomic) IBOutlet UILabel *likesfield;


@end
