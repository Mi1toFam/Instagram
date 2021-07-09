//
//  PostCell.m
//  Instagram
//
//  Created by Milto Geleta on 7/7/21.
//

#import "PostCell.h"
#import "NSDate+DateTools.h"

@implementation PostCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void) refreshData {
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

@end
