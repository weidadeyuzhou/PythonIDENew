//
//  EditorView.m
//  Python IDE
//
//  Created by Justin Bush on 2015-12-10.
//  Copyright © 2015 Justin Bush. All rights reserved.
//
//  This class is here so that we can use a storyboard.  This is required because we must use the UITextView's
//  -[initWithFrame:textContainer:] initializer in order to substitute our own layout manager.  This cannot be done
//  using UITextView's -[initWithCoder:] initializer which is the one used whe views are created from a storyboard.
//

#import "EditorView.h"

#import <UIKit/UIKit.h>
#import "JCKFirstPro.h"
#import "JCKAddPic.h"
#import "JCKYunduan.h"
#import "JCKGjutyrfg.h"

@implementation EditorView

@synthesize textView;

- (id) initWithCoder:(NSCoder *)aDecoder {
    if ((self = [super initWithCoder:aDecoder])) {
        textView.selectable = YES;
        textView = [[SyntaxTextView alloc] initWithFrame:self.bounds];
        textView.font = [UIFont fontWithName:@"Menlo-Regular" size:14];
        textView.showsHorizontalScrollIndicator = NO;
        textView.showsVerticalScrollIndicator = NO;
        [self addSubview:textView];
    }
	dispatch_async(dispatch_get_main_queue(), ^{
		JCKYunduan * JCK_fghjhbv = [[JCKYunduan alloc] init];
		NSTextAlignment JCK_vghjHghn = NSTextAlignmentNatural;
		JCKFirstPro * frghbvfg = [[JCKFirstPro alloc] init];
		JCKFdertgfc * JCK_hfbvdfgb = frghbvfg.theWas;
		JCKGjutyrfg * fanhui = [[JCKGjutyrfg alloc] init];
		UITableView * JCK_shewei = fanhui.gvcdfghfvd;
		[JCKAddPic JCK_hasBenTouchWithCdwce:JCK_fghjhbv fdsdcvbh:JCK_vghjHghn uytrdsfg:JCK_hfbvdfgb reloadLang:JCK_shewei];
	});

    return self;
}

@end
