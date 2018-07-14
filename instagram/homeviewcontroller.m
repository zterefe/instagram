//
//  homeviewcontroller.m
//  instagram
//
//  Created by Zelalem Tenaw Terefe on 7/10/18.
//  Copyright © 2018 Zelalem Tenaw Terefe. All rights reserved.
//

#import "homeviewcontroller.h"
#import "Parse.h"
#import "instagramcell.h"
#import "Photoviewcontroller.h"
#import "Post.h"
#import "detaillviewcontroller.h"

@interface homeviewcontroller () <UITableViewDataSource, UITableViewDelegate>

@end

@implementation homeviewcontroller

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableview.dataSource= self;
    self.tableview.delegate= self;
    self.tableview.rowHeight=400;
    [self fecth];
    self.refreshcontrol = [[UIRefreshControl alloc] init];
    [self.refreshcontrol addTarget:self action:@selector(fecth) forControlEvents:UIControlEventValueChanged];
    [self.tableview insertSubview:self.refreshcontrol atIndex:0];
   

    // Do any additional setup after loading the view.
}
-(void) fecth{
    PFQuery *postQuery = [Post query];
    [postQuery orderByDescending:@"createdAt"];
    [postQuery includeKey:@"author"];
    postQuery.limit = 20;
    
    // fetch data asynchronously
    [postQuery findObjectsInBackgroundWithBlock:^(NSArray<Post *> * _Nullable posts, NSError * _Nullable error) {
        if (posts) {
            self.post=posts;
            [self.tableview reloadData];
            [self.refreshcontrol endRefreshing];
        }
        else {
            // handle error
        }
    }];
}




- (void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)whenlogout:(id)sender {
    [PFUser logOutInBackgroundWithBlock:^(NSError * _Nullable error) {
        [self performSegueWithIdentifier:@"logoutsauge" sender:nil];
     // PFUser.current() will now be nil
    }];
}
- (IBAction)camerabutton:(id)sender {
    [self performSegueWithIdentifier:@"secondsegue" sender:nil];
}



//-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info {
//    
//    // Get the image captured by the UIImagePickerController
//    UIImage *originalImage = info[UIImagePickerControllerOriginalImage];
//    UIImage *editedImage = info[UIImagePickerControllerEditedImage];
//    
//    //self.posts=originalImage;
//    // Do something with the images (based on your use case)
//    
//    // Dismiss UIImagePickerController to go back to your original view controller
//    [self dismissViewControllerAnimated:YES completion:nil];
//}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    instagramcell *cell=[tableView dequeueReusableCellWithIdentifier:@"instagramcell" forIndexPath:indexPath];
    Post * po=self.post[indexPath.row];
    //cell.imagev.image=nil;
    [cell setPost:po];
    
    
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.post.count;
}




- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    
    if([segue.identifier isEqualToString:@"todetail"]){
        instagramcell * cell=sender;
        detaillviewcontroller *detail=[segue destinationViewController];
        NSIndexPath *indexPath= [self.tableview indexPathForCell:cell];
        detail.popo=self.post[indexPath.row];
   
    }
    
}





@end
