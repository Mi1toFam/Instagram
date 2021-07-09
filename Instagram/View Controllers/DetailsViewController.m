//
//  DetailsViewController.m
//  Instagram
//
//  Created by Milto Geleta on 7/8/21.
//

#import "DetailsViewController.h"
#import "NSDate+DateTools.h"

@interface DetailsViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *postView;
@property (weak, nonatomic) IBOutlet UILabel *captionLabel;
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;
@property (weak, nonatomic) IBOutlet UILabel *userLabel;

@end

@implementation DetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self refreshData];
}

- (void)refreshData {
    self.captionLabel.text = self.post.caption;
    PFUser *user = [PFUser currentUser];
    self.userLabel.text = user.username;
    [self.post.image getDataInBackgroundWithBlock:^(NSData *data, NSError *error) {
        if (error == nil) {
            self.postView.image = [UIImage imageWithData:data];
        }
    }];
    // Format createdAt date string
    NSDate *date = self.post.createdAt;
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    // Configure the input format to parse the date string
    formatter.dateFormat = @"E MMM d HH:mm:ss Z y";
    // Convert String to Date
    // Configure output format
    formatter.dateStyle = NSDateFormatterShortStyle;
    formatter.timeStyle = NSDateFormatterNoStyle;
    // Convert Date to String
    self.post.createdAtString = [date shortTimeAgoSinceNow];
    self.dateLabel.text = self.post.createdAtString;

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
