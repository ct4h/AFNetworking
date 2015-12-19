//
//  NSURLSessionTask+Serializer.h
//  AFNetworking
//
//  Created by Aleksandr Basalaev on 19.12.15.
//  Copyright © 2015 AFNetworking. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFURLResponseSerialization.h"

@interface NSURLSessionTask (Serializer)

@property (strong,nonatomic) id <AFURLResponseSerialization> responseSerializer;

@end
