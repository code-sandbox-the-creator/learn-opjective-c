// Numbers
NSNumber *intNumber = @42;
NSNumber *boolValue = @YES;

// Arrays (immutable)
NSArray *fruits = @[@"Apple", @"Banana", @"Orange"];
NSString *firstFruit = fruits[0]; // Subscripting access

// Dictionaries (key-value pairs)
NSDictionary *user = @{@"name": @"John", @"age": @30};
NSLog(@"User name: %@", user[@"name"]);
