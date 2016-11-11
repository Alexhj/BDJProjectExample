//
//  XMGEssenceActivity.m
//  百思不得姐
//
//  Created by 付星 on 2016/11/9.
//    Copyright © 2016年 yizzuide. All rights reserved.
//

#import "XMGEssenceActivity.h"
#import "XMGEssenceEventHandlerPort.h"
#import "UIBarButtonItem+XMGExtension.h"

#define EventHandler  XFConvertPresenterToType(id<XMGEssenceEventHandlerPort>)

@interface XMGEssenceActivity ()

@property (nonatomic, weak) UIButton *tagButton;
@end

@implementation XMGEssenceActivity

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = UIColorFromRGB(R_Color_GlobalBkg);
    // 配置导航栏
    [self configNav];
    // 初始化视图
    [self setUpViews];
    // 绑定视图数据
    [self bindViewData];
}

#pragma mark - 初始化
- (void)configNav
{
    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"MainTitle"]];
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:@"MainTagSubIcon" imageSel:@"MainTagSubIconClick"];
    self.tagButton = self.navigationItem.leftBarButtonItem.customView;
}

- (void)setUpViews {
    
}

- (void)bindViewData {
    // 双向数据绑定
    //XF_$_(self.textField, text, EventHandler, text)
    // 绑定事件层按钮命令
    XF_C_(self.tagButton, EventHandler, tagCommand)
}


#pragma mark - UIControlDelegate




#pragma mark - Getter



@end
