//
//  AnswerViewController.h
//  VGTrivia
//
//  Created by Richard Martin on 2016-01-06.
//  Copyright © 2016 richard martin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Question.h"

@interface AnswerViewController : UIViewController

@property (strong) Question * question;

@property (assign) int guessedAnswer;

@end
