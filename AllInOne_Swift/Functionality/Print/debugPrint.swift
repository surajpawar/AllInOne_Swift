//
//  debugPrint.swift
//  AllInOne_Swift
//
//  Created by MAC7 on 29/05/18.
//  Copyright © 2018 Suraj Pawar. All rights reserved.
//

import Foundation


/*
 
 * Declaration

 func debugPrint(_ items: Any..., separator: String = default, terminator: String = default)
 
 
 * Discussion

 You can pass zero or more items to the debugPrint(_:separator:terminator:) function. The textual representation for each item is the same as that obtained by calling String(reflecting: item). The following example prints the debugging representation of a string, a closed range of integers, and a group of floating-point values to standard output:
 
 
 
 debugPrint("One two three four five")
 // Prints "One two three four five"
 
 
 
 debugPrint(1...5)
 // Prints "CountableClosedRange(1...5)"
 
 
 
 debugPrint(1.0, 2.0, 3.0, 4.0, 5.0)
 // Prints "1.0 2.0 3.0 4.0 5.0"
 To print the items separated by something other than a space, pass a string as separator.
 
 
 
 debugPrint(1.0, 2.0, 3.0, 4.0, 5.0, separator: " ... ")
 // Prints "1.0 ... 2.0 ... 3.0 ... 4.0 ... 5.0"
 The output from each call to debugPrint(_:separator:terminator:) includes a newline by default. To print the items without a trailing newline, pass an empty string as terminator.
 
 
 
 for n in 1...5 {
 debugPrint(n, terminator: "")
 }
 // Prints "12345"
 
 */
