//
//  LoadlaunchImageView.h
//  LoadlaunchImage
//
//  Created by apple on 16/12/21.
//  Copyright © 2016年 zhangyanlin. All rights reserved.
//

typedef enum {
    
    FullScreenAdType = 1,//全屏的广告
    LogoAdType = 0,//带logo的广告
    
}AdType;


#import <UIKit/UIKit.h>
#import "UIImageView+WebCache.h"

#define mainHeight      [[UIScreen mainScreen] bounds].size.height
#define mainWidth       [[UIScreen mainScreen] bounds].size.width

typedef void (^LBClick) (NSInteger tag);
@interface LoadlaunchImageView : UIView

@property (strong, nonatomic) UIImageView *aDImgView;
@property (strong, nonatomic) UIWindow *window;
//倒计时总时长,默认6秒
@property (assign, nonatomic) NSInteger adTime;
@property (strong, nonatomic) UIButton *skipBtn;
//本地图片名字
@property (strong, nonatomic) NSString *localAdImgName;
@property (nonatomic, copy)LBClick clickBlock;

- (instancetype)initWithWindow:(UIWindow *)window andType:(NSInteger)type andImgUrl:(NSString *)url;

@end

