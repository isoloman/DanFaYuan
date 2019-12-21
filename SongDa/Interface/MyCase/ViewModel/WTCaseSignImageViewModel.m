//
//  WTCaseSignImageViewModel.m
//  SongDa
//
//  Created by 灰太狼 on 2018/4/11.
//  Copyright © 2018年 维途. All rights reserved.
//

#import "WTCaseSignImageViewModel.h"

@implementation WTCaseSignImageViewModel

- (void)dataByParameters:(id)parameters images:(NSArray *)images success:(void (^)(id))success failure:(void (^)(NSError *, NSString *))failure {
    [[WTHTTPSessionManager sharedManager] HTTPRequestWithRelativePOSTPath:kCaseSignImagesPath parameters:parameters images:images responeBlock:^(id jsonObject, NSError *error) {
        if (jsonObject) {
            success(nil);
        } else {
            failure(error,nil);
        }
    }];
}

@end
