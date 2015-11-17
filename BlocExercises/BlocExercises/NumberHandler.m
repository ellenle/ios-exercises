//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number {
    int numberOne = [number intValue];
    int doubledNumber = numberOne*2;
    return [NSNumber numberWithInt:doubledNumber];
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    NSInteger arrayLength;
    NSInteger smallNumber = 0;
    NSInteger bigNumber;
    if (number > otherNumber) {
        arrayLength = number - otherNumber;
        smallNumber = otherNumber;
        bigNumber = number;
    } else if (otherNumber > number) {
        arrayLength = otherNumber - number;
        smallNumber = number;
        bigNumber = otherNumber;
    }

    NSMutableArray *finalArray = [[NSMutableArray alloc] init];
    
    for( int i = 0; i <= arrayLength; i++ )
    {
        [finalArray insertObject:[NSNumber numberWithLong:smallNumber] atIndex:i];
        smallNumber = smallNumber +1;
        NSLog(@"The content of arry is%@",finalArray);
    }
    return finalArray;
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    NSMutableArray *mutableArrayOfNumbers = [arrayOfNumbers mutableCopy];
    [mutableArrayOfNumbers sortUsingComparator:^NSComparisonResult(id obj1, id obj2) {
        NSNumber *numberA = (NSNumber *)obj1;
        NSNumber *numberB = (NSNumber *)obj2;
        
        int intValueA = [numberA intValue];
        int intValueB = [numberB intValue];
        
        if (intValueA > intValueB) {
            return NSOrderedDescending;
        } else if (intValueA < intValueB) {
            return NSOrderedAscending;
        }
        return NSOrderedSame;
    }];
    NSNumber *returnValue = [mutableArrayOfNumbers objectAtIndex:0];
    NSInteger returnValueInt = [returnValue integerValue];
    return returnValueInt;
}

@end
