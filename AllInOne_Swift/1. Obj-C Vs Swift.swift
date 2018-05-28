//
//  File.swift
//  AllInOne_Swift
//
//  Created by MAC7 on 28/05/18.
//  Copyright © 2018 Suraj Pawar. All rights reserved.
//

import Foundation
/*
 
 Programming languages don’t die easily, but development shops that cling to fading paradigms do. If you’re developing apps for mobile devices and you haven’t investigated Swift, take note: Swift will not only supplant Objective-C when it comes to developing apps for the Mac, iPhone, iPad, Apple Watch, and devices to come, but it will also replace C for embedded programming on Apple platforms.
 
 Thanks to several key features, Swift has the potential to become the de-facto programming language for creating immersive, responsive, consumer-facing applications for years to come.
 
 Apple appears to have big goals for Swift. It has optimized the compiler for performance and the language for development, and it alludes to Swift being “designed to scale from ‘hello, world’ to an entire operating system” in Swift’s documentation. While Apple hasn’t stated all its goals for the language yet, the launches of Xcode 6, Playgrounds, and Swift together signal Apple’s intent to make app development easier and more approachable than with any other development tool chain.
 
 Here are 10 reasons to get ahead of the game by starting to work with Swift now.
 
 ****  1. Swift is easier to read ****

 
 Objective-C suffers all the warts you’d expect from a language built on C. To differentiate keywords and types from C types, Objective-C introduced new keywords using the @ symbol. Because Swift isn’t built on C, it can unify all the keywords and remove the numerous @ symbols in front of every Objective-C type or object-related keyword.
 
 Swift drops legacy conventions. Thus, you no longer need semicolons to end lines or parenthesis to surround conditional expressions inside if/else statements. Another large change is that method calls do not nest inside each other resulting in bracket hell—bye-bye, [[[ ]]]. Method and function calls in Swift use the industry-standard comma-separated list of parameters within parentheses. The result is a cleaner, more expressive language with a simplified syntax and grammar.
 
 Swift code more closely resembles natural English, in addition to other modern popular programming languages. This readability makes it easier for existing programmers from JavaScript, Java, Python, C#, and C++ to adopt Swift into their tool chain—unlike the ugly duckling that was Objective-C.
 

****  2. Swift is easier to maintain ****
 
 Legacy is what holds Objective-C back—the language cannot evolve without C evolving. C requires programmers to maintain two code files in order to improve the build time and efficiency of the executable app creation, a requirement that carries over to Objective-C.
 
 Swift drops the two-file requirement. Xcode and the LLVM compiler can figure out dependencies and perform incremental builds automatically in Swift 1.2. As a result, the repetitive task of separating the table of contents (header file) from the body (implementation file) is a thing of the past. Swift combines the Objective-C header (.h) and implementation files (.m) into a single code file (.swift).
 
 Objective-C’s two-file system imposes additional work on programmers—and it’s work that distracts programmers from the bigger picture. In Objective-C you have to manually synchronize method names and comments between files, hopefully using a standard convention, but this isn’t guaranteed unless the team has rules and code reviews in place.
 
 Xcode and the LLVM compiler can do work behind the scenes to reduce the workload on the programmer. With Swift, programmers do less bookkeeping and can spend more time creating app logic. Swift cuts out boilerplate work and improves the quality of code, comments, and features that are supported.
 
**** 3. Swift is safer ****
 
 One interesting aspect of Objective-C is the way in which pointers—particularly nil (null) pointers—are handled. In Objective-C, nothing happens if you try to call a method with a pointer variable that is nil (uninitialized). The expression or line of code becomes a no-operation (no-op), and while it might seem beneficial that it doesn’t crash, it has been a huge source of bugs. A no-op leads to unpredictable behavior, which is the enemy of programmers trying to find and fix a random crash or stop erratic behavior.
 
 Optional types make the possibility of a nil optional value very clear in Swift code, which means it can generate a compiler error as you write bad code. This creates a short feedback loop and allows programmers to code with intention. Problems can be fixed as code is written, which greatly reduces the amount of time and money that you will spend on fixing bugs related to pointer logic from Objective-C.
 
 Traditionally, in Objective-C, if a value was returned from a method, it was the programmer’s responsibility to document the behavior of the pointer variable returned (using comments and method-naming conventions). In Swift, the optional types and value types make it explicitly clear in the method definition if the value exists or if it has the potential to be optional (that is, the value may exist or it may be nil).
 
 To provide predictable behavior Swift triggers a runtime crash if a nil optional variable is used. This crash provides consistent behavior, which eases the bug-fixing process because it forces the programmer to fix the issue right away. The Swift runtime crash will stop on the line of code where a nil optional variable has been used. This means the bug will be fixed sooner or avoided entirely in Swift code.
 
**** 4. Swift is unified with memory management ****
 
 
 Swift unifies the language in a way that Objective-C never has. The support for Automatic Reference Counting (ARC) is complete across the procedural and object-oriented code paths. In Objective-C, ARC is supported within the Cocoa APIs and object-oriented code; it isn’t available, however, for procedural C code and APIs like Core Graphics. This means it becomes the programmer’s responsibility to handle memory management when working with the Core Graphics APIs and other low-level APIs available on iOS. The huge memory leaks that a programmer can have in Objective-C are impossible in Swift.
 
 A programmer should not have to think about memory for every digital object he or she creates. Because ARC handles all memory management at compile time, the brainpower that would have gone toward memory management can instead be focused on core app logic and new features. Because ARC in Swift works across both procedural and object-oriented code, it requires no more mental context switches for programmers, even as they write code that touches lower-level APIs—a problem with the current version of Objective-C.
 
 Automatic and high-performance memory management is a problem that has been solved, and Apple has proven it can increase productivity. The other side effect is that both Objective-C and Swift do not suffer from a Garbage Collector running cleaning up for unused memory, like Java, Go, or C#. This is an important factor for any programming language that will be used for responsive graphics and user input, especially on a tactile device like the iPhone, Apple Watch, or iPad (where lag is frustrating and makes users perceive an app is broken).
 
**** 5. Swift requires less code ****
 
 Swift reduces the amount of code that is required for repetitive statements and string manipulation. In Objective-C, working with text strings is very verbose and requires many steps to combine two pieces of information. Swift adopts modern programming language features like adding two strings together with a “+” operator, which is missing in Objective-C. Support for combining characters and strings like this is fundamental for any programming language that displays text to a user on a screen.
 
 The type system in Swift reduces the complexity of code statements — as the compiler can figure out types. As an example, Objective-C requires programmers to memorize special string tokens (%s, %d, %@) and provide a comma-separated list of variables to replace each token. Swift supports string interpolation, which eliminates the need to memorize tokens and allows programmers to insert variables directly inline to a user-facing string, such as a label or button title. The type inferencing system and string interpolation mitigate a common source of crashes that are common in Objective-C.
 
 With Objective-C, messing up the order or using the wrong string token causes the app to crash. Here, Swift again relieves you from bookkeeping work, translating into less code to write (code that is now less error prone) because of its inline support for manipulating text strings and data.
 
 **** 6. Swift is faster ****
 
 
 Dropping legacy C conventions has greatly improved Swift under the hood. Benchmarks for Swift code performance continue to point to Apple’s dedication to improving the speed at which Swift can run app logic.
 
 According to Primate Labs, makers of the popular GeekBench performance tool, Swift was approaching the performance characteristics of C++ for compute-bound tasks in December 2014 using the Mandelbrot algorithm.
 
 In February 2015, Primate Labs discovered that the Xcode 6.3 Beta improved Swift’s performance of the GEMM algorithm—a memory-bound algorithm with sequential access of large arrays—by a factor of 1.4. The initial FFT implementation—a memory-bound algorithm with random access of large arrays—had a 2.6-fold performance improvement.
 
 Further improvements were observed in Swift by applying best practices, resulting in an 8.5-fold boost for FFT algorithm performance (leaving C++ with only a 1.1-time performance gain). The enhancements also enabled Swift to outperform C++ for the Mandelbrot algorithm by a factor of a mere 1.03.
 
 Swift is nearly on par with C++ for both the FFT and Mandelbrot algorithms. According to Primate Labs, the GEMM algorithm performance suggests the Swift compiler cannot vectorize code the C++ compiler can — an easy performance gain that could be achieved in the next version of Swift.
 
 ****  7. Fewer name collisions with open source projects ****
 
 
 One issue that has plagued Objective-C code is its lack of formal support for namespaces, which was C++’s solution to code filename collisions. When this name collision happens in Objective-C, it is a linker error, and the app can’t run. Workarounds exist, but they have potential pitfalls. The common convention is to use a two- or three-letter prefixes to differentiate Objective-C code that is written, say, by Facebook versus your own code.
 
 Swift provides implicit namespaces that allow the same code file to exist across multiple projects without causing a build failure and requiring names like NSString (Next Step — Steve Jobs’ company after being fired from Apple) or CGPoint (Core Graphics). Ultimately, this feature in Swift keeps programmers more productive and means they don’t have to do the bookkeeping that exists in Objective-C. You can see Swift’s influence with simple names like Array, Dictionary, and String instead of NSArray, NSDictionary, and NSString, which were born out of the lack of namespaces in Objective-C.
 
 With Swift, namespaces are based on the target that a code file belongs to. This means programmers can differentiate classes or values using the namespace identifier. This change in Swift is huge. It greatly facilitates incorporating open source projects, frameworks, and libraries into your code. The namespaces enable different software companies to create the same code filenames without worrying about collisions when integrating open source projects. Now both Facebook and Apple can use an object code file called FlyingCar.swift without any errors or build failures.
 
**** 8. Swift supports dynamic libraries ****
 
 
 The biggest change in Swift that hasn’t received enough attention is the switch from static libraries, which are updated at major point releases (iOS 8, iOS 7, and so on), to dynamic libraries. Dynamic libraries are executable chunks of code that can be linked to an app. This feature allows current Swift apps to link against newer versions of the Swift language as it evolves over time.
 
 The developer submits the app along with the libraries, both of which are digitally signed with the development certificate to ensure integrity (hello, NSA). This means Swift can evolve faster than iOS, which is a requirement for a modern programming language. Changes to the libraries can all be included with the latest update of an app on the App Store, and everything simply works.
 
 Dynamic libraries have never been supported on iOS until the launch of Swift and iOS 8, even though dynamic libraries have been supported on Mac for a very long time. Dynamic libraries are external to the app executable, but are included within the app bundle downloaded from the App Store. It reduces the initial size of an app as it is loaded into memory, since the external code is linked only when used.
 

 PREVIOUS 1 2
 
 The ability to defer loading in a mobile app or an embedded app on Apple Watch will improve the perceived performance to the user. This is one of the distinctions that make the iOS ecosystem feel more responsive. Apple has been focused on loading only assets, resources, and now compiled and linked code on the fly. The on-the-fly loading reduces initial wait times until a resource is actually needed to display on the screen.
 
 Dynamic libraries in Swift make it possible for programming language changes and improvements to propagate faster than ever before. Users no longer need to wait for iOS point releases to benefit from any performance or reliability improvements Apple introduces into Swift.
 
 **** 9. Swift Playgrounds encourages interactive coding ****
 
 
 Swift’s newly introduced Playgrounds are a boon to experienced developers. The Playgrounds were partially inspired by the work of former Apple employee Brett Victor. Playgrounds enable programmers to test out a new algorithm or graphics routine, say 5 to 20 lines of code, without having to create an entire iPhone app.
 
 Apple has added inline code execution to Playgrounds to help programmers create a chunk of code or write an algorithm while getting feedback along the way. This feedback loop can improve the speed at which code can be written because the mental model that a traditional programmer needs can be replaced with data visualizations in Playgrounds. Programming is an iterative process, and any strain that can be reduced or used to complement the creative process will make programmers more productive and free them to solve bigger problems, rather than focusing on boring details that traditional compilers have imposed on programmers.
 
 Note: From my experience in teaching novice programmers, Playgrounds are not as powerful for beginners as they are for experienced programmers. Simply showing how a variable works in the Swift playground doesn’t help a beginner understand the need for a Floating point variable versus an Integer variable. The need becomes obvious when you show an app that can remember your last scroll position in the Facebook news feed. For beginners, the “why” question can only be answered with a working example: an iPhone app.
 
**** 10. Swift is a future you can influence ****
 
 Objective-C isn’t going anywhere, but it won’t see as many major changes, thanks to the introduction of Swift. Some Swift features will likely migrate over to Objective-C, but Objective-C’s legacy in C means it can absorb only so much.
 
 Swift provides the development community a direct way to influence a language that will be used to create apps, embedded systems (if Apple ever licenses an embedded framework and chip for third parties), and devices like the Apple Watch.
 
 Apple is focused on providing the best consumer experience and is building only those features deemed worthy of attention. With the Swift 1.2 release in Xcode 6.3, Apple has already fixed thousands of bugs reported with the popular Apple Bug Reporter utility. The team supporting the development and evolution of Swift is very interested in how the language can be improved to better support the development community that builds apps and systems using Swift.
 
 Swift: The more approachable, full-featured language
 
 The bulk of changes that allow Swift to rise above Objective-C stem from dropping the legacy language that Objective-C was built upon. Apple isn’t moving away from Cocoa, which is their API and code library for creating the experiences that feel Apple-esque. Instead, they are providing full-featured parity and making it easier to interact with new APIs that support features like Force Touch or Taptic Feedback.
 
 Many legacy decisions were designed to make compiler design easier. Swift is focusing on making the app developer’s job easier by jettisoning the mental strain of legacy coding practices. As modern compilers improve, more information can be inferred from less code.
 
 With Swift, programmers have half as many code files to maintain, zero manual code synchronization, and far less punctuation to mistype—leading to more time spent writing quality lines of code. Code is now self-documenting in Swift with the addition of optional types: a compile-time safety mechanism for returning a value or no value, which is a common issue with asynchronous operations, network failures, invalid user input, or data validation errors. ARC is unified in Swift between both procedural C-style code, as well as object-oriented code using Apple’s Cocoa framework.
 
 Developers will find that they write less code in Swift, and modern language features support them in keeping lines of code more readable. Swift will keep the entire Apple ecosystem at the forefront of programming as it continues to evolve, thanks to dynamic library support in iOS and Swift. Open source projects, third-party SDKs, and frameworks that integrate with home automation, devices, and social services will be easier to integrate without increasing build times. Swift is almost as fast as C++ in some algorithms and the latest release of Xcode 6.3 and Swift 1.2 point to additional performance optimizations on the horizon.
 
 Add to that the fact that Playgrounds and Swift enable a new way to program with visual feedback that assists the development of algorithms using inline data visualizations. A shorter feedback loop and graphical descriptions make the iterative coding process even easier to start.
 
 Ultimately, Swift is a more approachable full-featured programming language that will allow developers to not only build apps but also target embedded systems like the new lower-power Apple Watch for many years to come.
 
*/
