//
//  StarTrekDictionaries.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekDictionaries.h"

@implementation StarTrekDictionaries

- (NSString *)favoriteDrinkForStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    id favoriteDrink = characterDictionary[@"favorite drink"];
    if (favoriteDrink != nil && [favoriteDrink isKindOfClass:[NSString class]]) {
        return [NSString stringWithFormat:@"%@", favoriteDrink];
    }
    return nil;
}

- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
    NSMutableArray *favoriteDrinksArray = [NSMutableArray array];
    for (NSDictionary* character in charactersArray) {
        NSString *favoriteDrink = character[@"favorite drink"];
        [favoriteDrinksArray addObject:favoriteDrink];
    }
    return favoriteDrinksArray;
}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    NSMutableDictionary *characterMutableDictionary = [characterDictionary mutableCopy];
    [characterMutableDictionary setObject:@"HELLO WORLD" forKey:@"quote"];
    return characterMutableDictionary;
}

@end
