//
//  FirstViewController.m
//  rottenFruit
//
//  Created by Zhung-Xun Liao on 6/16/15.
//  Copyright (c) 2015 Zhung-Xun Liao. All rights reserved.
//

#import "FirstViewController.h"
#import <UIImageView+AFNetworking.h>

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.titleLabel.text=self.movie[@"title"];
    self.synopsisLabel.text=self.movie[@"synopsis"];
    NSString *posterUrl= [self.movie valueForKeyPath:@"posters.detailed"];
    posterUrl = [self convertPosterUrlStringToHighRes:posterUrl];
    [self.posterView setImageWithURL:[NSURL URLWithString:posterUrl]];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSString *)convertPosterUrlStringToHighRes:(NSString *)urlString{
    NSRange range = [urlString rangeOfString:@".*cloudfront.net/" options:NSRegularExpressionSearch];
    NSString *returnValue = urlString;
    if (range.length > 0){
        returnValue = [urlString stringByReplacingCharactersInRange:range withString:@"https://content6.flixster.com/"];
    }
    return returnValue;
}

@end
