//
//  DebugLogger.swift
//  DesafioBecaNtt
//
//  Created by Lucas Vinicius Moraes on 07/03/22.
//

import Foundation

class DebugLogger {
    enum LogLevel {
        case `default`
        case warning
        case error
    }
    
    static var logLevel: LogLevel = LogLevel.default
    
    static func log(_ value: @autoclosure() -> Any, logLevel:LogLevel = LogLevel.default) {
        
        if logLevel == LogLevel.default || logLevel == DebugLogger.logLevel {
            print(value())
        }
    }
}
