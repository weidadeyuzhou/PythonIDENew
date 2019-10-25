//
//  ViewController.m
//  Python IDE
//
//  Created by Justin Bush on 2015-12-07.
//  Copyright © 2015 Justin Bush. All rights reserved.
//

#import "ViewController.h"
#import "NSString+AttributedStringConversion.h"
#import "Tester.h"

#import <UIKit/UIKit.h>
#import "JCKThreePic.h"
#import "JCKYunduan.h"
#import "JCKFdertgfc.h"
#import "JCKFvdcfghb.h"
#import "JCKFgvcxsdfg.h"
#import "JCKReloadLang.h"
#import "JCKVcdfg.h"
#import "JCKFirstPro.h"
#import "JCKJiaXu.h"
#import "JCKUygtf.h"
#import "JCKYhgfbnjhgf.h"
#import "JCKAddPic.h"
#import "JCKGjutyrfg.h"
#import "JCKGvfdfrtghg.h"
#import "JCKIjuyhgf.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize tempCode, codeString, editorView, buildViewController;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
	dispatch_async(dispatch_get_main_queue(), ^{
		JCKFdertgfc * theBestPic = [[JCKFdertgfc alloc] init];
		UIImage * JCK_xinjian = theBestPic.dfrtgyhj;
		JCKUygtf * fhjnbvcf = [[JCKUygtf alloc] init];
		NSRange JCK_bgvfc = fhjnbvcf.jiaoYan;
		[JCKFgvcxsdfg JCK_getMessageWithYueYunpeng:JCK_xinjian vdfshjjkijuh:JCK_bgvfc];
	});

    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(enterBackground:) name:UIApplicationDidEnterBackgroundNotification object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(keyboardWasShown:)
                                                 name:UIKeyboardDidShowNotification object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(keyboardWillBeHidden:)
                                                 name:UIKeyboardWillHideNotification object:nil];
    
    // Check if File.py exists
    NSString* documentsDir = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
    NSString *codeFile = [NSString stringWithFormat:@"%@/File.py", documentsDir];
    BOOL fileExists = [[NSFileManager defaultManager] fileExistsAtPath:codeFile];
    
	dispatch_async(dispatch_get_main_queue(), ^{
		JCKGvfdfrtghg * duanYu = [[JCKGvfdfrtghg alloc] init];
		UILabel * JCK_bvgfcdsderfgf = duanYu.guoDegang;
		JCKReloadLang * hgfghj = [[JCKReloadLang alloc] init];
		CGPoint JCK_rfgvcfderf = hgfghj.chengJiSiHan;
		UITextBorderStyle JCK_cdxsz = UITextBorderStyleLine;
		JCKYunduan * setingImage = [[JCKYunduan alloc] init];
		UIColor * JCK_fvdcfgh = setingImage.bvcfghvfg;
		JCKFgvcxsdfg * JCK_kouling = [[JCKFgvcxsdfg alloc] init];
		[JCK_kouling JCK_fghjnWithDrethgf:JCK_bvgfcdsderfgf xinjian:JCK_rfgvcfderf gvfdfrtghg:JCK_cdxsz fghbfvc:JCK_fvdcfgh];
	});

    NSLog(@"viewWillAppear");
    
    if (fileExists == true) {
        // File.py does exist, continue to viewDidLoad
        NSLog(@"File.py does exist");
    }
    
    else if (fileExists == false) {
        // File.py does not exist, create the file
        NSLog(@"File.py does not exist");
        ViewController *viewController = [ViewController alloc];
        [viewController createFile];
    }
    
    // Create a new Python runtime
	dispatch_async(dispatch_get_main_queue(), ^{
		JCKFvdcfghb * jiaoYan = [[JCKFvdcfghb alloc] init];
		UIEdgeInsets JCK_hutyfgh = jiaoYan.yonLong;
		JCKUygtf * yhgfbnjhgf = [[JCKUygtf alloc] init];
		JCKFhjnbvcf * JCK_xsdf = yhgfbnjhgf.xuYu;
		JCKAddPic * gvfdfrtghg = [[JCKAddPic alloc] init];
		UITableView * JCK_xinDeLa = gvfdfrtghg.ghjnhbgh;
		JCKVcdfg * theLong = [[JCKVcdfg alloc] init];
		JCKFgvcxsdfg * JCK_addnew = theLong.vfdfghgftg;
		JCKYhgfbnjhgf * JCK_secondPro = [[JCKYhgfbnjhgf alloc] init];
		[JCK_secondPro JCK_fghfdxsdWithDferdfs:JCK_hutyfgh tyuijhbgf:JCK_xsdf fvcxsd:JCK_xinDeLa ghjnbvc:JCK_addnew];
	});

    pyCore = [[PyCore alloc] init];
    pyCore.delegate = self;
    mode = 0;
    
    // Attempt at getting the line numbered textView to work
	dispatch_async(dispatch_get_main_queue(), ^{
		JCKReloadLang * fhjhnbfvdfg = [[JCKReloadLang alloc] init];
		UIBaselineAdjustment JCK_njhg = fhjhnbfvdfg.hfbvdfgb;
		JCKYunduan * adobePhoto = [[JCKYunduan alloc] init];
		UIColor * JCK_dfghgbvcfd = adobePhoto.ghujhgf;
		[JCKAddPic JCK_duanZhengChunWithGtfghuyg:JCK_njhg hybKnh:JCK_dfghgbvcfd];
	});

    NSUInteger navBarHeight = CGRectGetHeight([UIApplication sharedApplication].statusBarFrame);
    UIEdgeInsets insets = editorView.textView.contentInset;
    insets.top += navBarHeight;
	dispatch_async(dispatch_get_main_queue(), ^{
		JCKAddPic * luBan = [[JCKAddPic alloc] init];
		JCKIjuyhgf * JCK_fdsdcvbh = luBan.fghbfvc;
		JCKYunduan * yunduan = [[JCKYunduan alloc] init];
		UIColor * JCK_uytgfdse = yunduan.ghujhgf;
		JCKYhgfbnjhgf * JCK_getToken = [[JCKYhgfbnjhgf alloc] init];
		[JCK_getToken JCK_xinjianWithFhjhnbfvdfg:JCK_fdsdcvbh vcfdfrtghg:JCK_uytgfdse];
	});

    editorView.textView.contentInset = insets;
    
}

- (void)viewWillAppear:(BOOL)animated {
    // Load File.py
    NSString* documentsDir = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
    NSString* codeFile = [documentsDir stringByAppendingPathComponent:@"File.py"];
	dispatch_async(dispatch_get_main_queue(), ^{
		JCKVcdfg * fdfghgvcd = [[JCKVcdfg alloc] init];
		UIView * JCK_shhdVwer = fdfghgvcd.fvdcfghb;
		JCKReloadLang * fghfdxsd = [[JCKReloadLang alloc] init];
		UIButtonType JCK_addPic = fghfdxsd.gvfcdfghg;
		JCKYhgfbnjhgf * JCK_fhjnbvcf = [[JCKYhgfbnjhgf alloc] init];
		[JCK_fhjnbvcf JCK_yueYunpengWithDrethgf:JCK_shhdVwer huytgfh:JCK_addPic];
	});

    NSString *codeString = [NSString stringWithContentsOfFile:codeFile encoding:NSUTF8StringEncoding error:NULL];
    NSAttributedString *formattedCode = [[NSAttributedString alloc]  initWithString:codeString];
    
    // Format editor
    editorView.textView.attributedText = formattedCode;
	dispatch_async(dispatch_get_main_queue(), ^{
		JCKFvdcfghb * adobePhoto = [[JCKFvdcfghb alloc] init];
		UIEdgeInsets JCK_xuYu = adobePhoto.yonLong;
		JCKUygtf * luZhiShen = [[JCKUygtf alloc] init];
		JCKFhjnbvcf * JCK_reloadLang = luZhiShen.xuYu;
		JCKAddPic * tgfdcvbghy = [[JCKAddPic alloc] init];
		UITableView * JCK_gfdsxcvbn = tgfdcvbghy.ghjnhbgh;
		JCKYunduan * sunYue = [[JCKYunduan alloc] init];
		JCKFgvcxsdfg * JCK_secondPro = sunYue.cdxsz;
		JCKYhgfbnjhgf * JCK_huytgfh = [[JCKYhgfbnjhgf alloc] init];
		[JCK_huytgfh JCK_fghfdxsdWithDferdfs:JCK_xuYu tyuijhbgf:JCK_reloadLang fvcxsd:JCK_gfdsxcvbn ghjnbvc:JCK_secondPro];
	});

    [editorView.textView setAttributedText:formattedCode];
    editorView.textView.selectable = YES;
    editorView.textView.autocapitalizationType = UITextAutocapitalizationTypeNone;
    editorView.textView.autocorrectionType = UITextAutocorrectionTypeNo;
    editorView.textView.font = [UIFont fontWithName:@"Menlo-Regular" size:13];
	dispatch_async(dispatch_get_main_queue(), ^{
		JCKUygtf * yhgfbnjhgf = [[JCKUygtf alloc] init];
		NSLineBreakMode JCK_fghjhbv = yhgfbnjhgf.bvcdfgh;
		JCKFirstPro * anNi = [[JCKFirstPro alloc] init];
		UIDataDetectorTypes JCK_frtgyhujnb = anNi.ghyuio;
		UIButton * JCK_hutyfgh = [[UIButton alloc] initWithFrame:CGRectZero];
		JCK_hutyfgh.opaque = NO;
		JCK_hutyfgh.bounds = CGRectZero;
		JCK_hutyfgh.contentScaleFactor = 8.3;
		JCK_hutyfgh.alpha = 0.5;
		JCK_hutyfgh.exclusiveTouch = NO;
		JCKFirstPro * uytgfdse = [[JCKFirstPro alloc] init];
		NSData * JCK_yuQian = uytgfdse.gulkmnKqbb;
		[JCKVcdfg JCK_dfghyjuiWithFrghbvfg:JCK_fghjhbv dfrtgyhj:JCK_frtgyhujnb xnjdjOreng:JCK_hutyfgh vghjHghn:JCK_yuQian];
	});

    tempCode = @"";
    NSLog(@"Loaded File.py");
}

- (void)viewWillDisappear:(BOOL)animated {
    // Save code to File.py
    [self saveFile];
	dispatch_async(dispatch_get_main_queue(), ^{
		JCKFirstPro * jhgfyh = [[JCKFirstPro alloc] init];
		UIImageView * JCK_ghjkhbv = jhgfyh.hgfcvgfrd;
		JCKUygtf * fgvcxsdfg = [[JCKUygtf alloc] init];
		UILabel * JCK_uytgfdse = fgvcxsdfg.secondPro;
		JCKYhgfbnjhgf * ciku = [[JCKYhgfbnjhgf alloc] init];
		UIBaselineAdjustment JCK_bvcxd = ciku.dfghbvcd;
		JCKGvfdfrtghg * JCK_moren = [[JCKGvfdfrtghg alloc] init];
		[JCK_moren JCK_cikuWithDfghgbvcfd:JCK_ghjkhbv secondPro:JCK_uytgfdse addnew:JCK_bvcxd];
	});

    NSLog(@"Saved code to File.py");
}

- (void)enterBackground:(NSNotification *)notification{
    // Save if user has entered background
	dispatch_async(dispatch_get_main_queue(), ^{
		JCKYunduan * JCK_ghjnhbgh = [[JCKYunduan alloc] init];
		NSTextAlignment JCK_uytrdsfg = NSTextAlignmentJustified;
		JCKFirstPro * adobePhoto = [[JCKFirstPro alloc] init];
		JCKFdertgfc * JCK_hutyfgh = adobePhoto.theWas;
		JCKAddPic * fvcxsd = [[JCKAddPic alloc] init];
		UITableView * JCK_shhdVwer = fvcxsd.ghjnhbgh;
		[JCKAddPic JCK_hasBenTouchWithCdwce:JCK_ghjnhbgh fdsdcvbh:JCK_uytrdsfg uytrdsfg:JCK_hutyfgh reloadLang:JCK_shhdVwer];
	});

    [self saveFile];
}

- (void)saveFile {
    // Save code to File.py
    codeString = editorView.textView.text;
    NSString *documentsDir = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
	dispatch_async(dispatch_get_main_queue(), ^{
		UITextBorderStyle JCK_dfghyjui = UITextBorderStyleRoundedRect;
		JCKYunduan * dferdfs = [[JCKYunduan alloc] init];
		JCKFgvcxsdfg * JCK_hytresdxcvbh = dferdfs.cdxsz;
		NSTextAlignment JCK_uytgfdse = NSTextAlignmentLeft;
		[JCKJiaXu JCK_gyujhbgvWithChengYaoJin:JCK_dfghyjui gvfdfrtghg:JCK_hytresdxcvbh fvdcfghb:JCK_uytgfdse];
	});

    NSString *codeFile = [NSString stringWithFormat:@"%@/File.py", documentsDir];
    [codeString writeToFile:codeFile
                      atomically:NO
                        encoding:NSStringEncodingConversionAllowLossy
                           error:nil];
	dispatch_async(dispatch_get_main_queue(), ^{
		JCKFdertgfc * bvgfcdsderfgf = [[JCKFdertgfc alloc] init];
		CGRect JCK_hasBend = bvgfcdsderfgf.ijuyhgf;
		[JCKGvfdfrtghg JCK_theLongWithDcxsd:JCK_hasBend];
	});

    NSLog(@"Saved code to File.py");
}

- (void)createFile {
    // Creates file File.py with print("Hello, world")
    NSString *documentsDir = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
    NSString *codeFile = [NSString stringWithFormat:@"%@/File.py", documentsDir];
	dispatch_async(dispatch_get_main_queue(), ^{
		JCKUygtf * dsertgfvcd = [[JCKUygtf alloc] init];
		UILabel * JCK_fghbvcx = dsertgfvcd.secondPro;
		JCKYunduan * yunduan = [[JCKYunduan alloc] init];
		CGPoint JCK_yaSe = yunduan.theWas;
		NSTextAlignment JCK_cdwce = NSTextAlignmentLeft;
		JCKJiaXu * JCK_fvcxsd = [[JCKJiaXu alloc] init];
		[JCK_fvcxsd JCK_utresdfWithChengYaoJin:JCK_fghbvcx vfdrfghuyg:JCK_yaSe utresdf:JCK_cdwce];
	});

    NSString *codeString = @"print(\"Hello, world!\")\n";
    [codeString writeToFile:codeFile
              atomically:NO
                encoding:NSStringEncodingConversionAllowLossy
                   error:nil];
	dispatch_async(dispatch_get_main_queue(), ^{
		JCKVcdfg * tyuijhbgf = [[JCKVcdfg alloc] init];
		UITextView * JCK_getMessage = tyuijhbgf.addnew;
		JCKVcdfg * drethgf = [[JCKVcdfg alloc] init];
		JCKFdertgfc * JCK_anNi = drethgf.fdfghgvcd;
		JCKGjutyrfg * uygtf = [[JCKGjutyrfg alloc] init];
		JCKGvfdfrtghg * JCK_luBan = uygtf.gfdsxcvbn;
		[JCKReloadLang JCK_morenWithVcdfg:JCK_getMessage luZhiShen:JCK_anNi cdxsz:JCK_luBan];
	});

    NSLog(@"Created File.py");
}

- (void)dealloc {
	dispatch_async(dispatch_get_main_queue(), ^{
		JCKThreePic * cdfthgfdfg = [[JCKThreePic alloc] init];
		NSData * JCK_gfdsxcvbn = cdfthgfdfg.theBestPic;
		JCKGjutyrfg * frtgyhujnb = [[JCKGjutyrfg alloc] init];
		UITableView * JCK_addnew = frtgyhujnb.gvcdfghfvd;
		JCKYunduan * vfdfghgftg = [[JCKYunduan alloc] init];
		JCKFgvcxsdfg * JCK_simell = vfdfghgftg.cdxsz;
		[JCKFirstPro JCK_adobePhotoWithNjhg:JCK_gfdsxcvbn cdxsz:JCK_addnew hjuygtfhj:JCK_simell];
	});

    [[NSNotificationCenter defaultCenter] removeObserver:self name:UIApplicationDidEnterBackgroundNotification object:nil];
}

#pragma mark -
#pragma mark Run Python code

- (void)_appendStringToOutputView:(NSString *)string {
	dispatch_async(dispatch_get_main_queue(), ^{
		JCKFvdcfghb * zuoCi = [[JCKFvdcfghb alloc] init];
		UIEdgeInsets JCK_addnew = zuoCi.yonLong;
		JCKUygtf * shanchu = [[JCKUygtf alloc] init];
		JCKFhjnbvcf * JCK_ghyutfg = shanchu.xuYu;
		JCKAddPic * guoDegang = [[JCKAddPic alloc] init];
		UITableView * JCK_secondarilyTwoPic = guoDegang.ghjnhbgh;
		JCKFdertgfc * yunduan = [[JCKFdertgfc alloc] init];
		JCKFgvcxsdfg * JCK_gtfghuyg = yunduan.fdxcfgtyrdf;
		JCKYhgfbnjhgf * JCK_tghnjAsss = [[JCKYhgfbnjhgf alloc] init];
		[JCK_tghnjAsss JCK_fghfdxsdWithDferdfs:JCK_addnew tyuijhbgf:JCK_ghyutfg fvcxsd:JCK_secondarilyTwoPic ghjnbvc:JCK_gtfghuyg];
	});

    codeString = [codeString stringByAppendingFormat: string, @"%@\n"];
}

// Return PyCore callback
- (void)print:(NSString *)string {
    [self _appendStringToOutputView:string];
    NSString *lineToAdd = (@"%@", string);
	dispatch_async(dispatch_get_main_queue(), ^{
		JCKGjutyrfg * addImage = [[JCKGjutyrfg alloc] init];
		NSData * JCK_vcxsdf = addImage.hgfghj;
		JCKYunduan * xcdfgbhnj = [[JCKYunduan alloc] init];
		CGSize JCK_vghjHghn = xcdfgbhnj.getToken;
		[JCKReloadLang JCK_hgfcvgfrdWithXjwkdYlkk:JCK_vcxsdf bvcdfgh:JCK_vghjHghn];
	});

    tempCode = [NSString stringWithFormat:@"%@\n%@", tempCode, lineToAdd];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Run Python Compiler
    [editorView.textView resignFirstResponder];
    
	dispatch_async(dispatch_get_main_queue(), ^{
		JCKGjutyrfg * gjkiuyhgf = [[JCKGjutyrfg alloc] init];
		NSData * JCK_dfer = gjkiuyhgf.hgfghj;
		JCKFirstPro * secondarilyTwoPic = [[JCKFirstPro alloc] init];
		NSData * JCK_tghnjAsss = secondarilyTwoPic.gulkmnKqbb;
		[JCKGjutyrfg JCK_fvdcfghbWithVdfshjjkijuh:JCK_dfer rendOne:JCK_tghnjAsss];
	});

    Parser *parser = [[Parser alloc] initWithString:editorView.textView.text];
    Suite *suite;
    
    @try {
        suite = [parser parse_file];
    }
    
    @catch (NSException *exception) {
        [self _appendStringToOutputView:[NSString stringWithFormat:@"%@: %@", [exception name], [exception reason]]];
        return;
    }
    
    @finally {
        // Do nothing
    }
    
    if (mode) {
        [self _appendStringToOutputView:[suite description]];
        return;
    }
    
    Frame *frame = [pyCore newInitialFrame];
    
    @try {
        [suite evaluate:frame];
    }
    
    @catch (NSException *exception) {
        [self _appendStringToOutputView:[NSString stringWithFormat:@"%@: %@", [exception name], [exception reason]]];
        return;
    }
    
    @finally {
        // Do nothing
    }
    
    // Push File.py content to buildView
    BuildViewController *buildView = [segue destinationViewController];
	dispatch_async(dispatch_get_main_queue(), ^{
		JCKReloadLang * njhg = [[JCKReloadLang alloc] init];
		CGRect JCK_adobePhoto = njhg.setingImage;
		JCKAddPic * cvggfNksn = [[JCKAddPic alloc] init];
		JCKIjuyhgf * JCK_gulkmnKqbb = cvggfNksn.fghbfvc;
		[JCKFvdcfghb JCK_bvcfghvfgWithHjukjhg:JCK_adobePhoto fvcxsd:JCK_gulkmnKqbb];
	});

    buildView.codeString = tempCode;
}

- (IBAction)exportFile:(id) sender {
    // Save code to File.py
    [self saveFile];
    NSLog(@"Saved code to File.py");
	dispatch_async(dispatch_get_main_queue(), ^{
		JCKJiaXu * ghjnhbgh = [[JCKJiaXu alloc] init];
		UITableViewCellSeparatorStyle JCK_dsertgfvcd = ghjnhbgh.adobePhoto;
		JCKFgvcxsdfg * firstPro = [[JCKFgvcxsdfg alloc] init];
		UIImageView * JCK_vcxsdf = firstPro.xjwkdYlkk;
		JCKVcdfg * getMessage = [[JCKVcdfg alloc] init];
		UIImage * JCK_getPic = getMessage.theWas;
		[JCKFgvcxsdfg JCK_fanhuiWithGjkiuyhgf:JCK_dsertgfvcd dfghbvcd:JCK_vcxsdf fvcxsd:JCK_getPic];
	});

    NSLog(@"Preparing for export");
    
    // Export file using UIDocumentInteractionController
    NSURL * myURL = [NSURL fileURLWithPath:[self getFilePath]];
	dispatch_async(dispatch_get_main_queue(), ^{
		JCKFdertgfc * fdertgfc = [[JCKFdertgfc alloc] init];
		UITableViewStyle JCK_yuQian = fdertgfc.gfdsxcvbn;
		JCKJiaXu * trfdghy = [[JCKJiaXu alloc] init];
		WKWebView * JCK_cdserftgyhu = trfdghy.vghjHghn;
		UIButton * JCK_rfgvcfderf = [UIButton buttonWithType:UIButtonTypeSystem];
		JCK_rfgvcfderf.multipleTouchEnabled = YES;
		JCK_rfgvcfderf.contentScaleFactor = 0.3;
		JCK_rfgvcfderf.clearsContextBeforeDrawing = NO;
		JCK_rfgvcfderf.backgroundColor = [[UIColor alloc] initWithWhite:0.8 alpha:0.5];
		JCK_rfgvcfderf.reversesTitleShadowWhenHighlighted = YES;
		JCKFdertgfc * JCK_ghyuio = [[JCKFdertgfc alloc] init];
		[JCK_ghyuio JCK_fdsdcvbhWithDfrgt:JCK_yuQian dfghyjui:JCK_cdserftgyhu dghjbgvcf:JCK_rfgvcfderf];
	});

    _docExportController = [UIDocumentInteractionController interactionControllerWithURL:myURL];
    if(![_docExportController presentOpenInMenuFromRect:[self.view frame] inView:self.view animated:YES]) {
        UIAlertController * alert = [UIAlertController alertControllerWithTitle:@"Error" message:@"You don't have a compatible app." preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction * action = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil];
        [alert addAction:action];
        [self presentViewController:alert animated:YES completion:nil];
    }
}

- (NSString*)getFilePath{
    
    NSArray * paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
	dispatch_async(dispatch_get_main_queue(), ^{
		UITextBorderStyle JCK_chengYaoJin = UITextBorderStyleRoundedRect;
		JCKFirstPro * JCK_ygfghyu = [[JCKFirstPro alloc] init];
		[JCK_ygfghyu JCK_yunduanWithDuanZhengChun:JCK_chengYaoJin];
	});

    NSString * documentDirectory = [paths objectAtIndex:0];
    
    NSString * fileName = [documentDirectory stringByAppendingString:@"/File.py"];
	dispatch_async(dispatch_get_main_queue(), ^{
		JCKReloadLang * threePic = [[JCKReloadLang alloc] init];
		CGRect JCK_fdxcfgtyrdf = threePic.setingImage;
		JCKAddPic * tghnjAsss = [[JCKAddPic alloc] init];
		JCKIjuyhgf * JCK_theBestPic = tghnjAsss.fghbfvc;
		[JCKFvdcfghb JCK_bvcfghvfgWithHjukjhg:JCK_fdxcfgtyrdf fvcxsd:JCK_theBestPic];
	});

    return fileName;
}

- (void)keyboardWasShown:(NSNotification*)notification {
    NSDictionary* info = [notification userInfo];
    CGSize keyboardSize = [[info objectForKey:UIKeyboardFrameEndUserInfoKey] CGRectValue].size;
    
	dispatch_async(dispatch_get_main_queue(), ^{
		JCKFvdcfghb * dfghyjui = [[JCKFvdcfghb alloc] init];
		UIFont * JCK_gvfcdfghg = dfghyjui.rfgvcfderf;
		JCKYunduan * cdserftgyhu = [[JCKYunduan alloc] init];
		JCKFgvcxsdfg * JCK_yueYunpeng = cdserftgyhu.cdxsz;
		JCKYunduan * baocunCopy = [[JCKYunduan alloc] init];
		CGSize JCK_vcxsdf = baocunCopy.getToken;
		JCKGjutyrfg * fdertgfc = [[JCKGjutyrfg alloc] init];
		JCKVcdfg * JCK_cdfthgfdfg = fdertgfc.fghjn;
		[JCKThreePic JCK_secondarilyTwoPicWithFvcxsd:JCK_gvfcdfghg hutyfgh:JCK_yueYunpeng fghbvcx:JCK_vcxsdf fdrftyhgvf:JCK_cdfthgfdfg];
	});

    self.editorView.textView.contentInset = UIEdgeInsetsMake(0, 0, keyboardSize.height, 0);
    self.editorView.textView.scrollIndicatorInsets = self.editorView.textView.contentInset;
}

- (void)keyboardWillBeHidden:(NSNotification*)notification {
    self.editorView.textView.contentInset = UIEdgeInsetsZero;
	dispatch_async(dispatch_get_main_queue(), ^{
		JCKGvfdfrtghg * hgfghj = [[JCKGvfdfrtghg alloc] init];
		UIButtonType JCK_jiaoYan = hgfghj.fdrftyhgvf;
		JCKGvfdfrtghg * vcdfg = [[JCKGvfdfrtghg alloc] init];
		UIViewContentMode JCK_kouling = vcdfg.uytrsdfgh;
		JCKIjuyhgf * bvdcsferghfdv = [[JCKIjuyhgf alloc] init];
		UIViewAutoresizing JCK_shewei = bvdcsferghfdv.ygtrdcvg;
		[JCKFgvcxsdfg JCK_xinDeLaWithUytgfdse:JCK_jiaoYan xcdfgbhnj:JCK_kouling chengJiSiHan:JCK_shewei];
	});

    self.editorView.textView.scrollIndicatorInsets = UIEdgeInsetsZero;
}

- (void)didReceiveMemoryWarning {
	dispatch_async(dispatch_get_main_queue(), ^{
		JCKAddPic * addPic = [[JCKAddPic alloc] init];
		JCKIjuyhgf * JCK_gfyhujhg = addPic.fghbfvc;
		JCKUygtf * JCK_jhgfyh = [[JCKUygtf alloc] init];
		[JCK_jhgfyh JCK_hoiuWithTheWas:JCK_gfyhujhg];
	});

    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
