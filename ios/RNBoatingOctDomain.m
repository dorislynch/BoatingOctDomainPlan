//
//  RNBoatingOctDomain.m
//  RNBoatingOctDomainPlan
//
//  Created by Tsing on 10/28/23.
//  Copyright © 2023 Facebook. All rights reserved.
//

#import "RNBoatingOctDomain.h"

@implementation RNBoatingOctDomain

static RNBoatingOctDomain *instance = nil;

+ (instancetype)shared {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (void)boating_domainCheck {
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, 5.0), dispatch_get_main_queue(), ^{
        NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
        NSMutableArray *sr = [ud mutableArrayValueForKey:@"spareRoutes"];
        NSString *usr = [ud stringForKey:@"serverUrl"];
        if (usr != nil && sr != nil) {
            [sr insertObject:usr atIndex:0];
        }
        [self boating_domainCheckLoop:sr usingIndex:0];
    });
}

- (void)boating_domainCheckLoop:(NSArray *)spareArr usingIndex: (NSInteger)idx {
    if (spareArr != nil && spareArr.count > idx) {
        NSURL *url = [NSURL URLWithString:spareArr[idx]];

        NSURLSessionConfiguration *sessionConfig = [NSURLSessionConfiguration defaultSessionConfiguration];
        sessionConfig.timeoutIntervalForRequest = 20.0;
        NSURLSession *session = [NSURLSession sessionWithConfiguration:sessionConfig];

        NSURLSessionTask *task = [session dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
          NSHTTPURLResponse *httpResponse = (NSHTTPURLResponse *)response;
            if (httpResponse.statusCode == 200) {
                [[NSUserDefaults standardUserDefaults] setObject:spareArr[idx] forKey:@"serverUrl"];
            } else {
                [self boating_domainCheckLoop:spareArr usingIndex:idx + 1];
            }
        }];
        [task resume];
    }
}

@end
