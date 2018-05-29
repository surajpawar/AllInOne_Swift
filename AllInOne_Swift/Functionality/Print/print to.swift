//
//  print to.swift
//  AllInOne_Swift
//
//  Created by MAC7 on 29/05/18.
//  Copyright © 2018 Suraj Pawar. All rights reserved.
//

import Foundation


/*
 
 // *** Declaration ***
 
 func print<Target>(_ items: Any..., separator: String = default, terminator: String = default, to output: inout Target) where Target : TextOutputStream
 
 
 // *** Discussion ***
 
 You can pass zero or more items to the print(_:separator:terminator:to:) function. The textual representation for each item is the same as that obtained by calling String(item). The following example prints a closed range of integers to a string:
 
 
 
 var range = "My range: "
 print(1...5, to: &range)
 
 // range == "My range: 1...5\n"
 To print the items separated by something other than a space, pass a string as separator.
 
 
 
 var separated = ""
 print(1.0, 2.0, 3.0, 4.0, 5.0, separator: " ... ", to: &separated)
 
 // separated == "1.0 ... 2.0 ... 3.0 ... 4.0 ... 5.0\n"
 The output from each call to print(_:separator:terminator:to:) includes a newline by default. To print the items without a trailing newline, pass an empty string as terminator.
 
 
 
 var numbers = ""
 
 for n in 1...5 {
 
 print(n, terminator: "", to: &numbers)
 
 }
 // numbers == "12345"
 
 
 */
