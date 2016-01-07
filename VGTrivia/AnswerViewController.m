//
//  AnswerViewController.m
//  VGTrivia
//
//  Created by Richard Martin on 2016-01-06.
//  Copyright © 2016 richard martin. All rights reserved.
//

#import "AnswerViewController.h"

@interface AnswerViewController ()

@property (weak, nonatomic) IBOutlet UILabel *statusLabel;

@property (weak, nonatomic) IBOutlet UILabel *correctAnswerLabel;



@end

@implementation AnswerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// new method

- (void)viewWillAppear:(BOOL)animated {
    
    if (self.guessedAnswer == self.question.rightAnswer) {
        self.statusLabel.text = @"Right answer, w00t!";
    } else {
        self.statusLabel.text = @"Wrong answer :[";
    }
    
    if (self.question.rightAnswer == 1) {
        self.correctAnswerLabel.text = [NSString stringWithFormat:@"Right answer: %@", self.question.answer1];
    } else if (self.question.rightAnswer == 2) {
        self.correctAnswerLabel.text = [NSString stringWithFormat:@"Right answer: %@", self.question.answer2];
    } else if (self.question.rightAnswer == 3) {
        self.correctAnswerLabel.text = [NSString stringWithFormat:@"Right answer: %@", self.question.answer3];
    } else if (self.question.rightAnswer == 4) {
        self.correctAnswerLabel.text = [NSString stringWithFormat:@"Right answer: %@", self.question.answer4];
    }
}

@end
