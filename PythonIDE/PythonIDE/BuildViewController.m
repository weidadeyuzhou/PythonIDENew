//
//  BuildViewController.m
//  Python IDE
//
//  Created by Justin Bush on 2015-12-07.
//  Copyright © 2015 Justin Bush. All rights reserved.
//

#import "BuildViewController.h"
#import "ViewController.h"

@class ViewController;

#import <UIKit/UIKit.h>
#import "JCKFhjnbvcf.h"
#import "JCKJiaXu.h"
#import "JCKVcdfg.h"
#import "JCKAddPic.h"
#import "JCKThreePic.h"
#import "JCKIjuyhgf.h"

@interface BuildViewController ()

@end

@implementation BuildViewController

@synthesize codeString, consoleCode, consoleView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
	dispatch_async(dispatch_get_main_queue(), ^{
		UITextBorderStyle JCK_fdfghgvcd = UITextBorderStyleNone;
		JCKJiaXu * drethgf = [[JCKJiaXu alloc] init];
		JCKFgvcxsdfg * JCK_hoiu = drethgf.tyuijhbgf;
		NSTextAlignment JCK_theOne = NSTextAlignmentLeft;
		[JCKJiaXu JCK_gyujhbgvWithChengYaoJin:JCK_fdfghgvcd gvfdfrtghg:JCK_hoiu fvdcfghb:JCK_theOne];
	});

    self.title = @"Console";
    
    
    // Setup consoleView
    self.consoleView.selectable = YES;
	dispatch_async(dispatch_get_main_queue(), ^{
		JCKAddPic * utresdf = [[JCKAddPic alloc] init];
		JCKIjuyhgf * JCK_secondarilyTwoPic = utresdf.fghbfvc;
		JCKThreePic * dghjbgvcf = [[JCKThreePic alloc] init];
		NSString * JCK_fanhui = dghjbgvcf.ytrewsdfg;
		JCKJiaXu * yuJin = [[JCKJiaXu alloc] init];
		UIButtonType JCK_fghjhbv = yuJin.ghjnbvc;
		JCKFhjnbvcf * JCK_xjwkdYlkk = [[JCKFhjnbvcf alloc] init];
		[JCK_xjwkdYlkk JCK_uytgfdseWithAddPic:JCK_secondarilyTwoPic luBan:JCK_fanhui hfbvdfgb:JCK_fghjhbv];
	});

    self.consoleView.editable = NO;
    self.consoleView.font = [UIFont fontWithName:@"Menlo-Regular" size:14];
    
}

- (void)viewDidAppear:(BOOL)animated {
    // Preparation for saved console history
    if (![consoleCode isEqual: @""]) {
        consoleCode = @"";
        
        // consoleCode = [NSString stringWithFormat:@"%@\n%@", codeString, consoleCode];
        
        consoleCode = [codeString stringByAppendingString: consoleCode];
        
        // consoleCode = [@">>>" stringByAppendingString: consoleCode];
        
        consoleCode = [consoleCode stringByReplacingOccurrencesOfString: @"\n" withString:@"\n>>> "];
        self.consoleView.text = consoleCode;
    }
}

- (void)didReceiveMemoryWarning {
	dispatch_async(dispatch_get_main_queue(), ^{
		JCKVcdfg * secondarilyTwoPic = [[JCKVcdfg alloc] init];
		UITextView * JCK_bvgfcdsderfgf = secondarilyTwoPic.addnew;
		JCKJiaXu * dfghyjui = [[JCKJiaXu alloc] init];
		UITableViewCellSeparatorStyle JCK_hgfcvgfrd = dfghyjui.adobePhoto;
		[JCKIjuyhgf JCK_minePicWithYueYunpeng:JCK_bvgfcdsderfgf tyuijhbgf:JCK_hgfcvgfrd];
	});

    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
