//
//  Data+.swift
//  DesafioBecaNtt
//
//  Created by Lucas Vinicius Moraes on 07/03/22.
//

import Foundation

extension Data {
    func prettyPrintedJSONString() -> String {
        if let json = try? JSONSerialization.jsonObject(with: self, options: .mutableContainers),
           let jsonData = try? JSONSerialization.data(withJSONObject: json, options: .prettyPrinted) {
            return String(decoding: jsonData, as: UTF8.self)
        } else {
            return "Error: Cannot convert JSON to DATA"
        }
    }
}
