//
//  YSXVideoViewFactory.m
//  yunshixun_plugin
//
//  Created by Plum on 2020/11/21.
//

#import "YSXVideoViewFactory.h"
#import "YSXVideoView.h"

@interface YSXVideoViewFactory()

@property(nonatomic, strong) NSObject<FlutterBinaryMessenger> *messager;

@end

@implementation YSXVideoViewFactory

- (instancetype)initWithMessenger:(NSObject<FlutterBinaryMessenger> *)messenger {
    if (self = [super init]) {
        _messager = messenger;
    }
    return self;
}


- (NSObject<FlutterPlatformView> *)createWithFrame:(CGRect)frame viewIdentifier:(int64_t)viewId arguments:(id)args {
    return [[YSXVideoView alloc] initWithFrame:frame viewIdentifier:viewId arguments:args binaryMessenger:self.messager];
}

- (NSObject<FlutterMessageCodec> *)createArgsCodec {
    return  [FlutterStandardMessageCodec sharedInstance];
}

@end
