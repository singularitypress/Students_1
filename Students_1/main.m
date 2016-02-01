//
//  main.m
//  Students_1
//
//  Created by Jay on 2016-02-01.
//  Copyright © 2016 Jay. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"

//method prototype.
void greet(Student *s);

int main(int argc, char * argv[]) {
    // Related to memory
    @autoreleasepool {
        // Alice
        // Address of Student obj in memory or return nil if out of memory.
        Student *alice = [Student alloc]; // returns nil if out of memory. Otherwise places a student obj in memory.
        alice->age = 20; // goes to the address of alice's name property and assigns 20.
        alice->name = @"Alice"; // same as above, but assigns a string.
        greet(alice);
        
        //Bob
        Student *bob = [Student alloc];
        bob->age = 21;
        bob->name = @"Bob";
        greet(bob);
    }
    return 0;
}

// greet method as invoked in the main.
void greet(Student *s) {
    NSLog(@"Hello, %@. I see that you are %d years old.\n", s->name, s->age);
}