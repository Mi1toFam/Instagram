//
//  PostCell.m
//  Instagram
//
//  Created by Milto Geleta on 7/7/21.
//

#import "PostCell.h"

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
    [self.post.image getDataInBackgroundWithBlock:^(NSData *data, NSError *error) {
        if (error == nil) {
            self.postView.image = [UIImage imageWithData:data];
        }
    }];
}

@end
