//
//  URLTester.swift
//  MonitoringApplication
//
//  Created by Gregory McIntyre on 2017/08/26.
//  Copyright © 2017 Greg McIntyre. All rights reserved.
//

import Foundation

class URLTester {
    
    func checkURL(urlPath: String) -> String
    {
        let startDate = Date().timeIntervalSince1970
        let response = Just.head(urlPath)
        let endDate = Date().timeIntervalSince1970
        
        var statusCode = 0
        
        if (response.statusCode != nil) {
            statusCode = response.statusCode!
        } else {
            statusCode = 404
        }
        
        let elapsedTime = endDate - startDate
        
        var componentStatus = ""
        
        switch (statusCode) {
            case 200:
                if elapsedTime < 1
                {
                    componentStatus  = "GREEN"
                } else {
                    componentStatus  = "PURPLE"
                }
            case 401:
                componentStatus  = "YELLOW"
            default:
                componentStatus  = "RED"
        }
        
        let result = ([Date().timeIntervalSince1970, ", Component Status: ",  componentStatus, ", ", urlPath, ", ", elapsedTime, "ms"].map{String(describing: $0)}).joined(separator: "")
        return result
    }

}
