//
//  NSURLSessionTask+Serializer.m
//  AFNetworking
//
//  Created by Aleksandr Basalaev on 19.12.15.
//  Copyright © 2015 AFNetworking. All rights reserved.
//

#import "NSURLSessionTask+Serializer.h"
#import <objc/runtime.h>

static void * responseSerializerKey = &responseSerializerKey;

@implementation NSURLSessionTask (Serializer)

- (id<AFURLResponseSerialization>)responseSerializer {
    return objc_getAssociatedObject(self, responseSerializerKey);
}

- (void)setResponseSerializer:(id<AFURLResponseSerialization>)responseSerializer {
    objc_setAssociatedObject(self, responseSerializerKey, responseSerializer, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

@end
