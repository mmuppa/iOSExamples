//
//  ViewController.m
//  GoeQuizMVC
//
//  Created by mmuppa on 4/2/15.
//  Copyright (c) 2015 mmuppa. All rights reserved.
//

#import "ViewController.h"
#import "Question.h"

@interface ViewController ()

@property (nonatomic, weak) IBOutlet UILabel *questionLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.questions = @[@"The Pacific ocean is the larger than the Atlantic ocean",
                  @"The Suez Canal connects the Red Sea and the Indian ocean",
                  @"The source of the Nile river is in Egypt",
                  @"The Amazon river is the longest river in the Americas",
                  @"Lake Baikal is the world\'s oldest ad deepest freshwater lake"];
    self.answers = @[@"YES", @"NO", @"NO",@"YES",@"YES"];
    self.index = 0;
    self.questionLabel.text = self.questions[self.index];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)nextQuestion:(id)sender {
    self.index++;
    if (self.index == [self.questions count]) {
        self.index = 0;
    }
    self.questionLabel.text = self.questions[self.index];
}

- (IBAction)answerQuestion:(id)sender {
    NSString *msg = @"Not Correct!";
    //NSLog(@"%@",[[sender titleLabel] text]);
    //NSLog(@"%@",[self.answers[self.index] description]);
    if ([[[sender titleLabel] text] isEqualToString:@"True"] && [self.answers[self.index] isEqualToString:@"YES"]) {
       msg = @"Correct!";
    } else if ([[[sender titleLabel] text] isEqualToString:@"False"] && [self.answers[self.index] isEqualToString:@"NO"]) {
        msg = @"Correct!";
    }
    
    UIAlertView *alertView = [[UIAlertView alloc]
                              initWithTitle:@"Answer!"
                              message:msg
                              delegate:self
                              cancelButtonTitle:nil
                              otherButtonTitles:@"Close", nil];
    alertView.delegate = self;
    [alertView show];
        
}

@end
