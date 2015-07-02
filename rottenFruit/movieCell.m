//
//  movieCell.m
//  rottenFruit
//
//  Created by Zhung-Xun Liao on 6/16/15.
//  Copyright (c) 2015 Zhung-Xun Liao. All rights reserved.
//

#import "movieCell.h"

@implementation movieCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)prepareForReuse{
    [super prepareForReuse];
    self.posterView.image=nil;
}
@end
