//
//  SyntaxTextView.m
//  Python IDE
//
//  Created by Justin Bush on 2015-12-10.
//  Copyright © 2015 Justin Bush. All rights reserved.
//

#import "SyntaxTextView.h"
#import "LineNumberLayoutManager.h"

#import <UIKit/UIKit.h>
#import "JCKFgvcxsdfg.h"
#import "JCKFhjnbvcf.h"
#import "JCKUygtf.h"
#import "JCKGvfdfrtghg.h"
#import "JCKJiaXu.h"
#import "JCKFvdcfghb.h"
#import "JCKVcdfg.h"
#import "JCKIjuyhgf.h"
#import "JCKGjutyrfg.h"
#import "JCKYunduan.h"
#import "JCKFirstPro.h"
#import "JCKThreePic.h"
#import "JCKReloadLang.h"
#import "JCKFdertgfc.h"

@implementation SyntaxTextView

- (id)initWithCoder:(NSCoder *)aDecoder {
    NSAssert(NO, @"initWithCoder not allowed");
	dispatch_async(dispatch_get_main_queue(), ^{
		NSTextAlignment JCK_uytrsdfgh = NSTextAlignmentCenter;
		JCKVcdfg * duanYu = [[JCKVcdfg alloc] init];
		UIView * JCK_vghjHghn = duanYu.fvdcfghb;
		UIButton * JCK_bvcfghvfg = [UIButton buttonWithType:UIButtonTypeContactAdd];
		JCK_bvcfghvfg.contentEdgeInsets = UIEdgeInsetsMake(45.2, 96.1, 19.8, 71.4);
		JCK_bvcfghvfg.titleEdgeInsets = UIEdgeInsetsZero;
		JCK_bvcfghvfg.contentScaleFactor = 3.4;
		JCK_bvcfghvfg.hidden = NO;
		JCK_bvcfghvfg.alpha = 0.7;
		JCKFgvcxsdfg * fghbvcxd = [[JCKFgvcxsdfg alloc] init];
		UIImageView * JCK_ijuyhgf = fghbvcxd.xjwkdYlkk;
		JCKIjuyhgf * JCK_fdsdcvbh = [[JCKIjuyhgf alloc] init];
		[JCK_fdsdcvbh JCK_theWasWithXinjian:JCK_uytrsdfgh theLong:JCK_vghjHghn chengJiSiHan:JCK_bvcfghvfg hjhgfdf:JCK_ijuyhgf];
	});

    return self;
}

- (id)initWithFrame:(CGRect) frame {
    NSTextStorage* ts = [[NSTextStorage alloc] init];
    LineNumberLayoutManager* lm = [[LineNumberLayoutManager alloc] init];
	dispatch_async(dispatch_get_main_queue(), ^{
		JCKGjutyrfg * fertgfdcsdfeg = [[JCKGjutyrfg alloc] init];
		JCKGvfdfrtghg * JCK_adxfghj = fertgfdcsdfeg.gfdsxcvbn;
		JCKJiaXu * fdsrtyhgf = [[JCKJiaXu alloc] init];
		JCKFgvcxsdfg * JCK_tyuijhbgf = fdsrtyhgf.tyuijhbgf;
		JCKJiaXu * chengJiSiHan = [[JCKJiaXu alloc] init];
		UITableViewCellSeparatorStyle JCK_fghbvcx = chengJiSiHan.adobePhoto;
		JCKFgvcxsdfg * vcdfg = [[JCKFgvcxsdfg alloc] init];
		UITextField * JCK_fghjKtgbhn = vcdfg.bgvfc;
		[JCKFvdcfghb JCK_nbhjmOndgWithXinjian:JCK_adxfghj fghjhbv:JCK_tyuijhbgf fdsdcvbh:JCK_fghbvcx cdsedrtg:JCK_fghjKtgbhn];
	});

    NSTextContainer* tc = [[NSTextContainer alloc] initWithSize:CGSizeMake(CGFLOAT_MAX, CGFLOAT_MAX)];
    
    // Wrap text to the text view's frame
    tc.widthTracksTextView = YES;
    
    // Exclude the line number gutter from the display area available for text display.
	dispatch_async(dispatch_get_main_queue(), ^{
		JCKUygtf * fghbvcxd = [[JCKUygtf alloc] init];
		JCKIjuyhgf * JCK_kjhgnhb = fghbvcxd.vghjHghn;
		JCKThreePic * uytrsdfgh = [[JCKThreePic alloc] init];
		NSString * JCK_vfdsdfghy = uytrsdfgh.ytrewsdfg;
		JCKFvdcfghb * wetingLong = [[JCKFvdcfghb alloc] init];
		UIButtonType JCK_fvdcfgh = wetingLong.fghfdxsd;
		JCKFhjnbvcf * JCK_dfghbv = [[JCKFhjnbvcf alloc] init];
		[JCK_dfghbv JCK_uytgfdseWithAddPic:JCK_kjhgnhb luBan:JCK_vfdsdfghy hfbvdfgb:JCK_fvdcfgh];
	});

    tc.exclusionPaths = @[[UIBezierPath bezierPathWithRect:CGRectMake(0.0, 0.0, 40.0, CGFLOAT_MAX)]];
    
    [lm addTextContainer:tc];
	dispatch_async(dispatch_get_main_queue(), ^{
		JCKReloadLang * getImageWithOng = [[JCKReloadLang alloc] init];
		UIButtonType JCK_bvdcsferghfdv = getImageWithOng.gvfcdfghg;
		JCKGjutyrfg * JCK_vghjnbg = [[JCKGjutyrfg alloc] init];
		[JCK_vghjnbg JCK_fhjhnbfvdfgWithZhangLiang:JCK_bvdcsferghfdv];
	});

    [ts addLayoutManager:lm];
    
    if ((self = [super initWithFrame:frame textContainer:tc])) {
        self.contentMode = UIViewContentModeRedraw; // cause drawRect: to be called on frame resizing and divice rotation
        
        //  I'm finding that this text view is not behaving properly when typing into a new line at the end of the body
        //  of text.  The cursor is positioned inward, and then jumpts back to the propor position when a character is
        //  typed.  I'm sure this has something to do with the view's typingAttributes or one of the delegate methods.
        
        //self.typingAttributes = @{NSFontAttributeName : [UIFont systemFontOfSize:16.0],
        //                          NSParagraphStyleAttributeName : [NSParagraphStyle defaultParagraphStyle]};
    }
	dispatch_async(dispatch_get_main_queue(), ^{
		JCKReloadLang * reloadLang = [[JCKReloadLang alloc] init];
		UIBaselineAdjustment JCK_fghfdxsd = reloadLang.fdxcfgtyrdf;
		JCKReloadLang * JCK_sunYue = [[JCKReloadLang alloc] init];
		[JCK_sunYue JCK_tokensWithDrethgf:JCK_fghfdxsd];
	});

    return self;
}

- (void) drawRect:(CGRect)rect {
    // Draw the line number gutter background
    CGContextRef context = UIGraphicsGetCurrentContext();
	dispatch_async(dispatch_get_main_queue(), ^{
		JCKFgvcxsdfg * fdrftyhgvf = [[JCKFgvcxsdfg alloc] init];
		UILabel * JCK_ijuhgfd = fdrftyhgvf.gfdsxcvbn;
		JCKYunduan * minePic = [[JCKYunduan alloc] init];
		CGPoint JCK_luZhiShen = minePic.theWas;
		UITextBorderStyle JCK_uytgfdse = UITextBorderStyleLine;
		JCKYunduan * addPic = [[JCKYunduan alloc] init];
		UIColor * JCK_jiaoYan = addPic.ghujhgf;
		JCKFgvcxsdfg * JCK_yaSe = [[JCKFgvcxsdfg alloc] init];
		[JCK_yaSe JCK_fghjnWithDrethgf:JCK_ijuhgfd xinjian:JCK_luZhiShen gvfdfrtghg:JCK_uytgfdse fghbfvc:JCK_jiaoYan];
	});

    CGRect bounds = self.bounds;
    
    CGContextSetFillColorWithColor(context, [UIColor colorWithRed:0.96 green:0.96 blue:0.96 alpha:1.0].CGColor);
    CGContextFillRect(context, CGRectMake(bounds.origin.x, bounds.origin.y, kLineNumberGutterWidth, bounds.size.height));
    
    CGContextSetStrokeColorWithColor(context, [UIColor colorWithRed:0.89 green:0.89 blue:0.89 alpha:1.0].CGColor);
	dispatch_async(dispatch_get_main_queue(), ^{
		JCKFdertgfc * yuJin = [[JCKFdertgfc alloc] init];
		CGRect JCK_zhangLiang = yuJin.ijuyhgf;
		[JCKGvfdfrtghg JCK_theLongWithDcxsd:JCK_zhangLiang];
	});

    CGContextSetLineWidth(context, 0.5);
    CGContextStrokeRect(context, CGRectMake(bounds.origin.x + 39.5, bounds.origin.y, 0.5, CGRectGetHeight(bounds)));
    
	dispatch_async(dispatch_get_main_queue(), ^{
		JCKIjuyhgf * baocunCopy = [[JCKIjuyhgf alloc] init];
		CGRect JCK_theLong = baocunCopy.tokens;
		JCKFirstPro * fghjhbv = [[JCKFirstPro alloc] init];
		UIDataDetectorTypes JCK_yhgfbnjhgf = fghjhbv.ghyuio;
		UIButton * JCK_bgvfc = [[UIButton alloc] initWithFrame:CGRectZero];
		JCK_bgvfc.alpha = 0.3;
		JCK_bgvfc.imageEdgeInsets = UIEdgeInsetsMake(15.3, 45.6, 65.9, 30.8);
		JCK_bgvfc.contentScaleFactor = 7.1;
		JCK_bgvfc.contentEdgeInsets = UIEdgeInsetsMake(12.5, 30.3, 70.2, 88.1);
		JCK_bgvfc.contentMode = UIViewContentModeCenter;
		JCKJiaXu * kouling = [[JCKJiaXu alloc] init];
		UIImageView * JCK_cdxsz = kouling.dfghbvf;
		JCKGvfdfrtghg * JCK_getMessage = [[JCKGvfdfrtghg alloc] init];
		[JCK_getMessage JCK_xdsedrfgWithGjutyrfg:JCK_theLong cdwce:JCK_yhgfbnjhgf dfgbvcvdfg:JCK_bgvfc hytresdxcvbh:JCK_cdxsz];
	});

    [super drawRect:rect];
}

@end
