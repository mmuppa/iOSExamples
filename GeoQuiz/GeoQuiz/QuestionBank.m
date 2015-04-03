//
//  QuestionBank.m
//  GeoQuiz
//
//  Created by mmuppa on 3/27/15.
//  Copyright (c) 2015 mmuppa. All rights reserved.
//

#import "QuestionBank.h"

@implementation QuestionBank

- (NSString *)description {
    return [NSString stringWithFormat:@"<%@: $%u>", self.question, self.answer];
}


@end