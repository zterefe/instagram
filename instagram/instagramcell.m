//
//  instagramcell.m
//  instagram
//
//  Created by Zelalem Tenaw Terefe on 7/11/18.
//  Copyright © 2018 Zelalem Tenaw Terefe. All rights reserved.
//

#import "instagramcell.h"
#import "detaillviewcontroller.h"


@implementation instagramcell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
- (void)setPost:(Post *)post{
    self.p=post;
    detaillviewcontroller *view=[[detaillviewcontroller alloc] init];
    view.popo=post;
   
   self.imagev.file =self.p[@"image"];
    [self.imagev loadInBackground];
    
}

@end
