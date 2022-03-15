//
//  ApiError.swift
//  DesafioBecaNtt
//
//  Created by Lucas Vinicius Moraes on 07/03/22.
//

import Foundation

public enum ApiErrorCode: Int {
    case serverErrorStatusCode = 500
}

public enum KnownApiFailures: Error {
    case serverErrorStatusCode(Error)
}

public enum ApiError: Error {
    case failure (Error, Int)
    case invalidResponse(Int)
    case emptyResponse
    case unknownError(Int)
}
