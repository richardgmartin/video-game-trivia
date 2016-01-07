//
//  Question.h
//  VGTrivia
//
//  Created by Richard Martin on 2016-01-06.
//  Copyright © 2016 richard martin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Question : NSObject

@property (strong) NSString * question;
@property (strong) NSString * answer1;
@property (strong) NSString * answer2;
@property (strong) NSString * answer3;
@property (strong) NSString * answer4;

@property (assign) int rightAnswer;

-(id)initWithQuestion:(NSString *)question answer1:(NSString *)answer1 answer2:(NSString *)answer2 answer3:(NSString *)answer3 answer4:(NSString *)answer4 rightAnswer:(int)rightAnswer;


@end
