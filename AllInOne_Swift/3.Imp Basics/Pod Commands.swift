//
//  Pod Commands.swift
//  AllInOne_Swift
//
//  Created by MAC7 on 28/05/18.
//  Copyright © 2018 Suraj Pawar. All rights reserved.
//

import Foundation

/*
 
 POD Installation Steps and Commands
 
 
 
 *** [ 1 ] Open terminal and type: ***
 
 sudo gem install cocoapods
 Gem will get installed in Ruby inside System library. Or try on 10.11 Mac OSX El Capitan, type:
 
 sudo gem install -n /usr/local/bin cocoapods
 If there is an error "activesupport requires Ruby version >= 2.xx", then install latest activesupport first by typing in terminal.
 
 sudo gem install activesupport -v 4.2.6


 
 
 *** [ 2 ] After installation, there will be a lot of messages, read them and if no error found, it means cocoapods installation is done. Next, you need to setup the cocoapods master repo. Type in terminal: ***
 
 pod setup
 
 And wait it will download the master repo. The size is very big (370.0MB at Dec 2016). So it can be a while. You can track of the download by opening Activity and goto Network tab and search for git-remote-https. Alternatively you can try adding verbose to the command like so:
 
 pod setup --verbose
 
 
 
 
 
 *** [ 3 ] Once done it will output "Setup Complete", and you can create your XCode project and save it. ***
 
 
 
 
 *** [ 4 ] Then in terminal cd to "your XCode project root directory" (where your .xcodeproj file resides) and type: ***
 
 pod init
 
 
 
 
 *** [ 5 ] Then open your project's podfile by typing in terminal: ***
 
 open -a Xcode Podfile
 
 
 
 *** [ 6 ] Your Podfile will get open in text mode. Initially there will be some default commands in there. Here is where you add your project's dependencies. For example, in the podfile, type ***
 
 pod 'AFNetworking', '0.9.1'
 
 (this line is an example of adding the AFNetworking library to your project).
 
 Other tips:
 
 Uncomment  platform :ios, '9.0' Uncomment  user_frameworks! if you're using Swift
 
 When you are done editing the podfile, save it and close XCode.
 
 
 
 
 *** [ 7 ] Then install pods into your project by typing in terminal: ***
 
 pod install
 
 Depending how many libraries you added to your podfile for your project, the time to complete this varies. Once completed, there will be a message that says
 
 "Pod installation complete! There are X dependencies from the Podfile and X total pods installed."
 
 Now close your xcode project and open .xcworkspace xcode project file and start coding.
 
 
 
 *** [ 8 ] When next time we add new pod then we need to use below command ***
 
 pod update
 
 It will update all pods from pod file
 
 
 
 *** [ 9 ] Issue with XCode
 
 When terminal is not working with xcode then check terminal connection in prefrences
 
 
 
 */
