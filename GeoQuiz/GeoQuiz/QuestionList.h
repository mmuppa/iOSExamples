//
//  QuestionList.h
//  GeoQuiz
//
//  Created by mmuppa on 3/28/15.
//  Copyright (c) 2015 mmuppa. All rights reserved.
//
#import <Foundation/Foundation.h>
#import "QuestionBank.h"

@interface QuestionList : NSObject
{
    NSArray *_questions;
}

- (void) addQuestion:(QuestionBank *)q;
- (BOOL) getAnswer:(QuestionBank *)q;
- (QuestionBank *) getQuestion:(int)i;
