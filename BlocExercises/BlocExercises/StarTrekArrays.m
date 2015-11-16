//
//  StarTrekArrays.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekArrays.h"

@implementation StarTrekArrays

- (NSArray *) arrayOfStarTrekCharactersFromString:(NSString *)characterString {
    NSArray *characterArray = [characterString componentsSeparatedByString:@";"];
    [characterArray enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
    }];
    return characterArray;
}

- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
    NSString *characterString1 = [characterArray componentsJoinedByString:@";"];
    return characterString1;
}

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
    NSMutableArray *characterMutableArray = [characterArray mutableCopy];
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES selector:@selector(localizedCaseInsensitiveCompare:)];
    [characterMutableArray sortUsingDescriptors:@[sortDescriptor]];
    return characterMutableArray;
}

- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
    
    NSMutableArray *characterArrayWorf = [characterArray mutableCopy];
    NSPredicate *hasWorfPredicate = [NSPredicate predicateWithFormat:@"SELF CONTAINS[c] 'worf'"];
    [characterArrayWorf filterUsingPredicate:hasWorfPredicate];
    NSLog(@"hello %@", characterArrayWorf);
    if (characterArrayWorf.count >= 1){
        return YES;
    }
    return NO;
}

@end
