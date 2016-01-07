//
//  ViewController.m
//  VGTrivia
//
//  Created by Richard Martin on 2016-01-06.
//  Copyright © 2016 richard martin. All rights reserved.
//

#import "ViewController.h"
#import "Question.h"
#import "AnswerViewController.h"


@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *questionLabel;

@property (weak, nonatomic) IBOutlet UIButton *answerButton1;

@property (weak, nonatomic) IBOutlet UIButton *answerButton2;

@property (weak, nonatomic) IBOutlet UIButton *answerButton3;

@property (weak, nonatomic) IBOutlet UIButton *answerButton4;

@property (strong) NSArray *questions;
@property (strong) Question *curQuestion;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Question * question1 = [[Question alloc] initWithQuestion:@"Which character was a twin in Final Fantasy II?" answer1:@"Cecil" answer2:@"Kain" answer3:@"Palom" answer4:@"Tellah" rightAnswer:3];
                            
    Question * question2 = [[Question alloc] initWithQuestion:@"Which of these people was a game designer for Deus Ex?" answer1:@"JC Denton" answer2:@"Shigeru Miyamoto" answer3:@"Matt Rix" answer4:@"Warren Spector" rightAnswer:4];
    
    Question * question3 = [[Question alloc] initWithQuestion:@"Which of these items was commnly used as a currency in Diablo 2?" answer1:@"Stone of Jordan" answer2:@"Duck of Doom" answer3:@"Ethereal Shard" answer4:@"Tower Bux" rightAnswer:1];
    
    Question * question4 = [[Question alloc] initWithQuestion:@"Which of these was a boss man in Mega Man 2?" answer1:@"Snow Man" answer2:@"Wood Man" answer3:@"Youda man" answer4:@"Snake man" rightAnswer:2];
    
    Question * question5 = [[Question alloc] initWithQuestion:@"What was the job of the main character in Fallout 3 New Vegas?" answer1:@"A bounty hunter" answer2:@"A metalsmith" answer3:@"A courier" answer4:@"A plumber" rightAnswer:3];
    
    self.questions = @[question1, question2, question3, question4, question5];
    
}

- (void)viewWillAppear:(BOOL)animated {
    
    self.curQuestion = [self.questions objectAtIndex:arc4random() % self.questions.count];
    
    self.questionLabel.text = self.curQuestion.question;
    
    [self.answerButton1 setTitle:self.curQuestion.answer1 forState:UIControlStateNormal];
    
    [self.answerButton2 setTitle:self.curQuestion.answer2 forState:UIControlStateNormal];
    
    [self.answerButton3 setTitle:self.curQuestion.answer3 forState:UIControlStateNormal];
    
    [self.answerButton4 setTitle:self.curQuestion.answer4 forState:UIControlStateNormal];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)answerButtonTapped:(id)sender {
    [self performSegueWithIdentifier:@"DisplayAnswer" sender:sender];
}

// new method

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"DisplayAnswer"]) {
        AnswerViewController * answerViewController = (AnswerViewController *)segue.destinationViewController;
        answerViewController.question = self.curQuestion;
        
        if (sender == self.answerButton1) {
            answerViewController.guessedAnswer = 1;
        } else if (sender == self.answerButton2) {
            answerViewController.guessedAnswer = 2;
        } else if (sender == self.answerButton3) {
            answerViewController.guessedAnswer = 3;
        } else if (sender == self.answerButton4) {
            answerViewController.guessedAnswer = 4;
        }
    }
}

- (IBAction)close:(UIStoryboardSegue *)segue {
    
}

@end
