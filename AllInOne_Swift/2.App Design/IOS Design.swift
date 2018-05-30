//
//  IOS Design.swift
//  AllInOne_Swift
//
//  Created by MAC7 on 29/05/18.
//  Copyright © 2018 Suraj Pawar. All rights reserved.
//

import Foundation




/* *** IOS Design Concepts  ***
    
// ----------------------------------------------------------------------------
*** Auto Layout ***
 
 
 
 
// ----------------------------------------------------------------------------
*** Adaptive Layout Interface ***
 
 
 
// ----------------------------------------------------------------------------
*** Size Classes ***
 
 // https://medium.com/@craiggrummitt/size-classes-in-interface-builder-in-xcode-8-74f20a541195
 
 
 /*
 
 
 Auto layout is great for making adjustments to a layout based on constraints, but sometimes a layout requires more significant adjustments based on the device type, screen size or orientation.
 
 Perhaps you may want:
 
 a bigger font size in the huge iPad Pro screen than on the tiny iPhone SE.
 a view to be laid out differently on iPhones when in landscape or portrait mode.
 to provide additional buttons in the iPad version of your app.
 to layout content differently when your app is in slide over or split view modes.
 How can you make these sorts of adjustments to a layout?
 
 In earlier versions of iOS, you may have had multiple storyboards for iPads and iPhones. Or perhaps you may have used the device orientation or window size to determine the environment for laying out a scene. Along with more and more devices, split view controllers (introduced in iOS 8) and slide over and split view multitasking modes (introduced in iOS 9) have made adjusting a layout to its environment even more complex.
 
 To simplify things, Apple recommends a new paradigm. Rather than considering your layout in terms of the many device types, resolutions, multitasking modes, and device orientation, you should focus instead on adjusting your layout to two types of widths (called compact and regular) and two types of heights (also compact and regular). These distinctions are called size classes. You can then use these size classes to define or adjust your layout.
 
 Size classes reduce all of the different potential horizontal and vertical configurations to just two types: compact for more limited space; and regular for less limited space. An iPhone portrait orientation, for example, is considered to have a compact width and a regular height. See figure 1 for a comprehensive breakdown of how the size classes correspond to devices and devices orientations.
 
 
 Figure 1 Device/Orientation in relation to Size classes
 In defining the size classes, Apple made some interesting decisions worth taking note of:
 
 When in landscape orientation, iPhones (other than 6+ and 6S+) are still considered to have compact widths.
 All iPads in portrait or landscape mode, are considered to have both regular widths and heights. This means that a change in orientation on an iPad does not trigger a change in size class.
 Size classes do not just describe device types and orientations. Size classes also describe an app’s environment when the app is presented inside iPad multitasking modes — such as Slide Over, Split View, and Side by Side (See figure 2). Note that though the horizontal size class may change for certain iPad multitasking modes, the vertical size class remains regular. In fact, a compact vertical size class is sufficient to imply that we’re working with an iPhone in landscape mode.
 
 
 Figure 2 Multitasking modes in relation to Size Classes
 What can you do with Size classes?
 Size classes are not an alternative to constraints and auto layout, rather they work in tandem. You can make many changes to a layout with size classes, such as:
 
 Views can be resized or repositioned.
 Fonts and colors can be changed.
 Constraints can be activated or deactivated (called installed and uninstalled).
 Views can be added or removed (also called installed and uninstalled).
 Size classes in Interface Builder
 Though you can adapt your interfaces for different size classes in code, the easiest and most convenient approach is generally from Interface Builder, especially with added features in updates to Xcode 8. You can simply assign your layouts and constraints to specific size classes in Interface Builder, and your layout will update automatically when there is a change in size class — without writing a line of code!
 
 You’re going to explore adding customizations for different size classes in Interface Builder in an app with a very simple layout, displaying an article with a title and body text.
 
 You’ll first build the iPhone interface, which contains the title in a label and the body text in a text view (see the iPhone layout on the left of figure 3). This layout, however, doesn’t look great on the iPad (layout in the center of figure 3). To resolve this, you’re going to use size classes to adapt the interface (layout on the right). Note the subtle and not so subtle differences between the layouts — as the iPad has more space, you’re going to adjust font sizes, margin sizes and add a subtitle label.
 
 
 Figure 3 Spot the differences!
 Let’s start by setting up the basic interface and constraints.
 
 Create a simple Single View Application and call it SimpleSizeClasses.
 Select the file inspector for the main storyboard. Note that the storyboard automatically has “Use Auto Layout” and “Use Trait Variations” selected. (See figure 4.) This indicates that this storyboard is ready to go for adaptive layout with constraints and size classes.
 
 Figure 4 Adaptive storyboard checkboxes
 Note An app that makes use of auto layout and size classes not only is ready for adaptive layout, but can take advantage of iOS multitasking environments. If you want users to be able to use slide over or split view with your app, make sure you don’t deselect these options!
 
 1. Drag a label onto the main storyboard.
 
 2. Replace the label’s text with “Title”, then use constraints in Interface Builder to center the label and pin it to the top layout guide. Choose the “Title 1” font type.
 
 3. Drag on a text view below the label, filling the available space.
 
 4. Pin the text view to the title label, the bottom layout guide, and the left and right margins.
 
 Checkpoint You can compare your app at this point with mine here: https://github.com/iOSAppDevelopmentwithSwiftinAction/SimpleSizeClasses.git (1.InitialSetup branch)
 
 Specifying layouts for Size Classes
 Now you’ve set up the basic interface of the article app, let’s look at how to specify different layouts for different size classes in Interface Builder. There are two main approaches that you can use in tandem:
 
 1. Add customizations to an attribute;
 
 2. Vary for traits.
 
 You’re going to use both of these approaches to customize our simple layout for different size classes.
 
 Let’s look at both in turn.
 
 Adding customizations to an attribute
 
 You can add customizations for a size class directly to an attribute. Let’s explore using this feature by modifying font sizes and margin sizes for different size classes in our sample application.
 
 View the storyboard in the device configuration bar as an iPad Pro, and zoom out to see the whole scene. Notice how tiny the text is on the expansive iPad screen. (You can also see this in the center image of figure 3) You’re going to increase the font size for larger size classes.
 
 1. Select the title label and open the attributes inspector.
 
 2. Notice the grey plus symbol to the left of the font attribute. Selecting the plus symbol gives you the opportunity to add a customized value for a size class. Select the plus symbol now. Here you can select the size class you’re interested in, from Width, Height, and Gamut (a display type). The current size class will be suggested as a default.
 
 3. Select Regular Width, Regular Height to add a customized value for iPads. A customized value will appear for the font attribute, for the specified size class. The cryptic wR hR to the left of the new attribute stands for width Regular, height Regular.
 
 Note If you’re not interested in adding a customization for a certain size class, you can set it to Any. As we’re not interested in customizing for Gamut, leave it as Any.
 
 4. You can now modify the new value for this size class. Make it a System font of 55 points. See figure 5.
 
 
 Figure 5 Add customized value for size class
 Go through the same process to modify the font size for the text view as well — how about a System font of 25 points?
 
 Check the layout in different devices, orientations and adaptations. You should find that the font attributes adjust appropriately for the different size classes.
 
 You can easily add more attributes for other size classes by going through the process again. Removing a customized attribute is straightforward too — just select the cross to the left of the attribute.
 
 Which other attributes can you customize? Explore the attributes and size inspectors for the label. Any attribute with a plus sign can be customized. For the label, for example, this includes some color attributes in the attributes inspector and margin attributes in the size inspector. See figure 6.
 
 
 Figure 6 Label customizable attributes
 Adding customizations to a constraint
 Importantly, you can also customize the values of a constraint for a size class. Let’s increase the leading and trailing margins of the text view to make it narrower on the iPad.
 
 1. Select the text view and the size inspector and find the Leading space constraint. Instead of selecting Edit, double click on the constraint in the size inspector to open up a more detailed edit view for the constraint.
 
 2. Notice that the constraint’s Constant value has a plus sign. Add a variation for iPads (Regular Width, Regular Height).
 
 3. Give the Constant a customized value of 50. See figure 7.
 
 
 Figure 7 Add customization to a constraint
 Do the same for the text view’s trailing constraint (you’ll need to select the text view again to be able to choose a different constraint).
 
 Tip If the text view goes off screen after setting up the trailing constraint, you need to reverse the first and second items. Select the drop down for either the first or second item and select Reverse the first and Second Item. Now modify the constant to 50 again, and the constraint should be set up correctly.
 
 Note the effects of the changes you’ve made to the layout in different configurations. If all has gone well, the text view should have a wider margin on the iPad.
 
 Adding customization to the installed attribute
 Now, to make some more significant changes to the iPad layout, you’re going to add a subtitle label just for iPad users. But first you’re going to remove the constraint between the title and the text view to make room for the subtitle view.
 
 You may have noticed another customizable attribute in both the constraint inspector and the attribute inspector for the view: Installed. Views and constraints can be installed or uninstalled for specific size classes. Let’s use this attribute to remove the constraint.
 
 1. Double click the text view Top Space constraint.
 
 2. Select the plus symbol next to the Installed attribute to add a customization.
 
 3. Deselect the checkbox for wR hR. See figure 8.
 
 
 Figure 8 Uninstall constraint
 Note Don’t worry if the text view disappears — it is just temporarily confused about where to go, you’ll resolve this shortly.
 
 Now, let’s add the subtitle view, we do this by varying for traits.
 
 Varying for traits
 Varying for traits is great for making more significant changes to a layout for a size class. Let’s explore varying for traits by adding a view and a constraint for different size classes in the sample application.
 
 You may have noticed the Vary for Traits button at the right of the device configuration bar, and wondered what that button was for. Well, wonder no more! You can use the Vary for Traits button to start varying a layout just for specific size classes.
 
 With an iPad device selected in the device configuration bar, select Vary for Traits. You will be given the option to vary just for the width size class (wR), height size class (hR), or both (wR hR). Select both width and height. When you make your selection, the device configuration bar will turn blue and you will see which devices, orientations, and adaptions (multitasking environments) you will be varying the layout for. See figure 9.
 
 
 Figure 9 Vary for traits
 As you can see, the wR hR size class isn’t just relevant to iPads, but also to certain adaptions. Go ahead and vary the layout for this size class.
 
 1. Add a subtitle label below the title.
 
 2. Give it some sample text.
 
 3. Give it a System font size of 30.
 
 4. Pin the subtitle label to the title, and align it horizontally.
 
 5. Pin the text view to the subtitle label, and modify the constraint constant to 8 points. The text view should slide in nicely underneath the new subtitle label.
 
 6. You’re done varying the layout! Select the Done Varying button in the device configuration bar.
 
 Again, select different devices or orientations in the device configuration bar to admire the results of your work. The subtitle should appear for iPads and disappear for other size classes. Note that different views and constraints are installed or uninstalled in different size classes. Faded symbols in the document outline represent uninstalled views and constraints. See figure 10.
 
 
 Figure 10 Uninstalled views and constraints
 Checkpoint If you’d like to compare your project with mine at this point, you can check mine out here: https://github.com/iOSAppDevelopmentwithSwiftinAction/SimpleSizeClasses.git (2.iPadLayout branch)
 
 If this article left you wanting more, download the FREE first chapter of iOS Development with Swift, and see this Slideshare presentation for a discount code.
 
 

 
 */
 
 
// ----------------------------------------------------------------------------
*** Auto Resizing ***
 

 
 
// ----------------------------------------------------------------------------
*** Constraints ***
 

 
// ----------------------------------------------------------------------------
*** Storyboard and XIB ***
 
 
 
 // ----------------------------------------------------------------------------
 *** XIB ***
 
 
 
 
 // ----------------------------------------------------------------------------
 *** Segue ***
 
 
 
 
// ----------------------------------------------------------------------------
*** Constraints using code ***

 
 
 
 
 
 // ----------------------------------------------------------------------------
 *** Traits ***
 
 - Trait Variations
 
 
 - Vary for Traints
 
 
 // ----------------------------------------------------------------------------
 *** Safe Area ***
 
 
 
 
 // ----------------------------------------------------------------------------
 *** Constrain to margin ***
 
 Note: When you appling constraints to second superview then use safe area constraints so our background colour will not apply to top status bar.
 
 
 
 
 // ----------------------------------------------------------------------------
 *** Layout Margins ***
 
 - Default

 - Language directional

 - Fixed
 
 - Preserve Superview Margins
 
 - Follow Readable Width
 
 - Safe Area Relative Margins
 
 - Sage Area Layout Guide
 
 
 
 // ----------------------------------------------------------------------------
 *** Alignment constrains ***
 
 -Leading Edges
 
 -Trailing Edges
 
 -Top Edges
 
 -Bottom Edges
 
 -Horizontal Centers
 
 -Vertical Centers
 
 -Baseline
 
 - Horizontally in Container
 
 - Vertically in Container
 
*/
