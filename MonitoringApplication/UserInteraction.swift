//
//  UserInteraction.swift
//  MonitoringApplication
//
//  Created by Gregory McIntyre on 2017/08/27.
//  Copyright © 2017 Greg McIntyre. All rights reserved.
//

import Foundation

class UserInteraction {
    func flowControl()
    {
        var userCommand: [String]
        let question = "Please enter a maximum of 20 comma separated URL's to test: "
        
        for i in 1...3 {
            print(question)
            
            userCommand = readLine()!.characters.split(separator: ",", maxSplits: 20).map(String.init)
            
            if ValidateNetwork().isConnectedToNetwork() == true
            {
                for count in 0...(userCommand.count-1) {
                    print(URLTester().checkURL(urlPath: userCommand[count]))
                }
                break
            }
            else
            {
                if (i < 3) {
                    print("Please check internet connection and try again.")
                } else {
                    print("You have exceeded the maximum retry attemps the program will now exit.")
                }
            }
        }
    }
}
