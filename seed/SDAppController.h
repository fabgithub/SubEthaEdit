//
//  SDAppController.h
//  seed
//
//  Created by Martin Ott on 3/14/07.
//  Copyright 2007 TheCodingMonkeys. All rights reserved.
//

#import <Foundation/Foundation.h>


extern int fd;
extern BOOL endRunLoop;


@interface SDAppController : NSObject {
    @private
    NSPipe *_signalPipe;
}

@end
