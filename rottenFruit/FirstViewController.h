//
//  FirstViewController.h
//  rottenFruit
//
//  Created by Zhung-Xun Liao on 6/16/15.
//  Copyright (c) 2015 Zhung-Xun Liao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *posterView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *synopsisLabel;

@property (weak, nonatomic) NSDictionary *movie;
@end

