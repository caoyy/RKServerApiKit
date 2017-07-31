//
//  UserInfo.m
//  RKServerApi-iOS
//
//  Created by caoyy on 16/7/27.
//  Copyright © 2016年 roky. All rights reserved.
//

#import "UserInfo.h"
#import "RealmManager.h"

static UserInfo *mUserInfo = nil;

@implementation UserInfo

+ (void)setUserInfo:(UserInfo *)_UserInfo{
      mUserInfo = _UserInfo;
}

+ (UserInfo *)getUserInfo{
    if(mUserInfo == nil){
        mUserInfo = [RealmManager queryUserInfo];
    }
    return mUserInfo;
}

@end
