//
//  Var.swift
//  AllInOne_Swift
//
//  Created by MAC7 on 28/05/18.
//  Copyright © 2018 Suraj Pawar. All rights reserved.
//

import Foundation

/*
 
 let is constant.
 
 var is dynamic.
 
 
 *** Bit of description: ***
 
 let creates a constant. (sort of like an NSString). You can't change its value once you have set it. You can still add it to other things and create new variables though.
 
 var creates a variable. (sort of like NSMutableString) so you can change the value of it. But this has been answered several times.
 

 
 
 */



/*  Var Examples
 
 
 * Var is a variable, and can change (but after it is defined not to a different data type.)
 
    var number = 5
    number = 6               //This will compile.
 
 
 * If you try changing the variable to a different dataType, it will not work
 
    var number = 5
    number = "Hello World"   //This will not compile.
 
 
 * var is the only way to create a variables in swift. var doesn't mean dynamic variable as in the case of interpreted languages like javascript. For example,
 
    var name = "Bob"

 * In this case, the type of variable name is inferred that name is of type String, we can also create variables by explicitly defining type, for example
 
    var age:Int = 20
 
 Now if you assign a string to age, then the compiler gives the error.
 
 
 
 
 */




/*  Let Examples
 
 * let is a constant value, so it can never be changed.
 
    let number = 5
    number = 6               //This will not compile.
 
 * let is used to declare constants. For example
 
    let city = "Kathmandu"
 
 * Or we can also do,
 
    let city:String = "Kathmandu"
 
 * If you try to change the value of city, it gives error at compile time.
 
 
 */
