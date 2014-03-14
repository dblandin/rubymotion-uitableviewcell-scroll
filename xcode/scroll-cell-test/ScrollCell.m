//
//  ScrollCell.m
//  scroll-cell-test
//
//  Created by devon blandin on 3/14/14.
//
//

#import "ScrollCell.h"

@implementation ScrollCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self setSelectionStyle: UITableViewCellSelectionStyleNone];

        [self setup];
    }
    return self;
}

- (void) setup
{
    NSLog(@"setup");
    UIScrollView *scroll_view = [[UIScrollView alloc] init];
    [scroll_view setBackgroundColor: [UIColor redColor]];
    [scroll_view setDelegate: self];
    [scroll_view setFrame:self.contentView.frame];
    
    [self.contentView addSubview: scroll_view];
    
    [scroll_view setContentSize: CGSizeMake(self.contentView.frame.size.width * 2, self.contentView.frame.size.height)];
}

- (void)scrollViewWillEndDragging:(UIScrollView *)scrollView withVelocity:(CGPoint)velocity targetContentOffset:(inout CGPoint *)targetContentOffset
{
    NSLog(@"scrollViewWillEndDragging");
}

@end
