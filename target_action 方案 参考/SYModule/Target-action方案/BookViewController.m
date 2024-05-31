//
//  BookViewController.m
//  SYModule
//
//  Created by Shen Yuan on 2017/11/25.
//  Copyright © 2017年 Shen Yuan. All rights reserved.
//

#import "BookViewController.h"

@interface BookViewController ()
@property (nonatomic,strong)UILabel *descLb;

@property (nonatomic,strong)UILabel *bookLb;
@end

@implementation BookViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];

    
    [self.view addSubview:self.descLb];
    [self.view addSubview:self.bookLb];
    
    self.descLb.text = [NSString stringWithFormat:@"我有一本%@",self.bookName];
    self.bookLb.text = [NSString stringWithFormat:@"我的ID是%@",self.bookId];
    
}

#pragma mark - getter && setter

- (UILabel *)descLb
{
    if (!_descLb) {
        _descLb = [[UILabel alloc] initWithFrame:CGRectMake(20, 100, 200, 50)];
        _descLb.numberOfLines = 0;
        _descLb.textColor = [UIColor redColor];
        
    }
    return _descLb;
}

- (UILabel *)bookLb
{
    if (!_bookLb) {
        _bookLb = [[UILabel alloc] initWithFrame:CGRectMake(20, 200, 200, 50)];
        _bookLb.textColor = [UIColor cyanColor];

    }
    return _bookLb;
}

@end
