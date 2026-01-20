#import <Foundation/Foundation.h>
#import "Account.h"

int main(int argc, const char * argv[]) {
    // @autoreleasepool manages memory automatically in modern Objective-C (2026 standard)
    @autoreleasepool {
        
        // 1. Initialize the object
        // 'alloc' reserves memory, 'init' sets up initial values
        Account *myAccount = [[Account alloc] init];
        myAccount.ownerName = @"John Doe";
        myAccount.balance = 5000.0;
        
        NSLog(@"--- Welcome %@ ---", myAccount.ownerName);

        // 2. Execute business logic
        [myAccount deposit:15000.0];      // This will succeed
        [myAccount withdraw:2000.0];       // This will succeed
        [myAccount withdraw:50000.0];      // This will trigger the 'Insufficient funds' if-else
        [myAccount deposit:-10.0];         // This will trigger the 'Invalid input' if-else

        // 3. Display results
        // %@ is for objects (Strings), %.2f is for float/double with 2 decimal places
        NSLog(@"Final Balance: %.2f", myAccount.balance);

        // 4. Check logic tier using switch
        [myAccount checkBalanceStatus];
        
    }
    return 0;
}
