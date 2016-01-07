//
//  Question.m
//  VGTrivia
//
//  Created by Richard Martin on 2016-01-06.
//  Copyright © 2016 richard martin. All rights reserved.
//

#import "Question.h"

@implementation Question

-(id)initWithQuestion:(NSString *)question answer1:(NSString *)answer1 answer2:(NSString *)answer2 answer3:(NSString *)answer3 answer4:(NSString *)answer4 rightAnswer:(int)rightAnswer {
    
    if ((self = [super init])) {
        _question = question;
        _answer1 = answer1;
        _answer2 = answer2;
        _answer3 = answer3;
        _answer4 = answer4;
        _rightAnswer = rightAnswer;
    }
    return self;
}

@end
