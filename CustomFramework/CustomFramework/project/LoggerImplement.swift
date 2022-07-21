//
//  LoggerImplement.swift
//  CustomFramework
//
//  Created by sjyong on 2022/07/21.
//

import Foundation

class LoggerImplement {
    class func addLog(_ data: String) -> Bool {
        
        if data.isEmpty {
            Swift.print("data is empty")
            return false
        }
        
        Swift.print(data)
        return true
    }
}
