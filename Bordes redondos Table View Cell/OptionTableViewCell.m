//
//  OptionTableViewCell.m
//  Bordes redondos Table View Cell
//
//  Created by user on 12/26/15.
//  Copyright © 2015 user. All rights reserved.
//

#import "OptionTableViewCell.h"

@implementation OptionTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setFrame:(CGRect)frame {
    frame.origin.x += 15;
    frame.size.width -= 2 * 15;
    [super setFrame:frame];
}

@end
