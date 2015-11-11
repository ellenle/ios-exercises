//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    NSInteger numberHigh;
    NSInteger numberLow;
    
    if (number>otherNumber) {
        numberHigh = number;
        numberLow = otherNumber;
    } else if (number<otherNumber) {
        numberHigh = otherNumber;
        numberLow = number;
    } else if (number == otherNumber){
        numberHigh = number;
        numberLow = number;
    }
    
    NSString *finalString = [NSString stringWithFormat: @"%d", (int)numberLow];
    
    while (numberHigh > numberLow){
        numberLow = numberLow + 1;
//        finalString = [NSMutableString stringWithFormat: @"%d", (int)numberLow];
        finalString = [finalString stringByAppendingString:[NSString stringWithFormat:@"%i", (int)numberLow]];
    }
    
    return finalString;
}

@end
