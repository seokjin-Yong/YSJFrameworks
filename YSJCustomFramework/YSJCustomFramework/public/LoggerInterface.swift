//
//  LoggerInterface.swift
//  YSJCustomFramework
//
//  Created by sjyong on 2022/07/21.
//

import Foundation

public class LoggerInterface {
    public class func addLog(log: String) -> Bool {
        return LoggerImplement.addLog(log)
    }
}
