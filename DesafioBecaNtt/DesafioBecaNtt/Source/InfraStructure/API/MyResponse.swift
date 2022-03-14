//
//  MyResponse.swift
//  DesafioBecaNtt
//
//  Created by Lucas Vinicius Moraes on 07/03/22.
//

import Foundation

public class MyResponse {
    var data: Data?
    var error: Error?
    var statusCode: Int
    var success: Bool?
    
    init(data: Data?, error: Error?, statusCode: Int?, success: Bool?) {
        self.data = data
        self.error =  error
        self.statusCode = statusCode ?? -1
        self.success = success
    }
}
