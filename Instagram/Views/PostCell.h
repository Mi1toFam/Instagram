//
//  PostCell.h
//  Instagram
//
//  Created by Milto Geleta on 7/7/21.
//

#import <UIKit/UIKit.h>
#import "Post.h"

NS_ASSUME_NONNULL_BEGIN

@interface PostCell : UITableViewCell
@property (strong, nonatomic) Post *post;
@property (weak, nonatomic) IBOutlet UIImageView *postView;
@property (weak, nonatomic) IBOutlet UILabel *captionLabel;
@property (weak, nonatomic) IBOutlet UILabel *userLabel;
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;


-(void)refreshData;

@end

NS_ASSUME_NONNULL_END
