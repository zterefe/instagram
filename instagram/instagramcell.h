//
//  instagramcell.h
//  instagram
//
//  Created by Zelalem Tenaw Terefe on 7/11/18.
//  Copyright © 2018 Zelalem Tenaw Terefe. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Post.h"
#import <ParseUI/ParseUI.h>

@interface instagramcell : UITableViewCell


@property (weak, nonatomic) IBOutlet PFImageView *imagev;
@property(strong,nonatomic) Post *p;
- (void)setPost:(Post *)post;
@end
