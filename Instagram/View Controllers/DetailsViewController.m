//
//  DetailsViewController.m
//  Instagram
//
//  Created by Milto Geleta on 7/8/21.
//

#import "DetailsViewController.h"

@interface DetailsViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *postView;
@property (weak, nonatomic) IBOutlet UILabel *captionLabel;
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;

@end

@implementation DetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self refreshData];
}

- (void)refreshData {
    self.captionLabel.text = self.post.caption;
    [self.post.image getDataInBackgroundWithBlock:^(NSData *data, NSError *error) {
        if (error == nil) {
            self.postView.image = [UIImage imageWithData:data];
        }
    }];
    // self.dateLabel.text = self.post.author;
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
