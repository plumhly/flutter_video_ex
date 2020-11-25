//
//  YSXVideoView.m
//  yunshixun_plugin
//
//  Created by Plum on 2020/11/21.
//

#import "YSXVideoView.h"

@interface YSXVideoView ()

@property(nonatomic, strong) UIView *videoView;

@end

@implementation YSXVideoView

- (instancetype)initWithFrame:(CGRect)frame
               viewIdentifier:(int64_t)viewId
                    arguments:(id _Nullable)args
              binaryMessenger:(NSObject<FlutterBinaryMessenger>*)messenger {
  if (self = [super init]) {
      [self setupViewWithFrame:frame args:args];
  }
  return self;
}

- (void)setupViewWithFrame:(CGRect)frame args:(id)args {
    
    _videoView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 10)];
    _videoView.backgroundColor = [UIColor redColor];
}

- (UIView*)view {
  return _videoView;
}

- (void)dealloc {
}

@end
