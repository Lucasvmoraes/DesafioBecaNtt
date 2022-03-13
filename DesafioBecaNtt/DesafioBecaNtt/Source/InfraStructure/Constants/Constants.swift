//
//  Constants.swift
//  DesafioBecaNtt
//
//  Created by Lucas Vinicius Moraes on 07/03/22.
//

import Foundation

enum TipoAmbiente {
    case desenvolvimento
    case sandbox
    case producao
    case local
}

struct Constants {
    
    static let tipoAmbiente: TipoAmbiente = TipoAmbiente.producao
    static let apiKey = ""
    static let apiLanguage = "language=pt-BR"
    static let apiUrlImageW500 = "https://image.tmdb.org/t/p/w500"
    static let apiUrlImageOriginal = "https://image.tmdb.org/t/p/original/"

    struct ApiError {
        static let badRequest = 400
        static let emptyResponse = "emptyResponse"
        static let invalidResponse = "invalidResponse"
        
    }

    struct ParametersKeys {
        static let header = "header"
        static let method = "method"
        static let path = "path"
        static let body = "body"
        
        static let mediaType = "mediaType"
        static let timeWindow = "timeWindow"
    }

    struct HTTPMethod {
        static let get = "GET"
        static let post = "post"
        static let patch = "patch"
    }

    struct UrlBase {
        static let local = ""
        static let desenvolvimento = ""
        static let sandbox = ""
        static let producao = ""
    }


    static func getUrlBase(tipoAmbiente: TipoAmbiente) -> String {
        switch tipoAmbiente {
        case .desenvolvimento:
            return UrlBase.desenvolvimento
        case .sandbox:
            return UrlBase.sandbox
        case .producao:
            return UrlBase.producao
        case .local:
            return UrlBase.local
        }
    }

    static func getUrlApi(tipoAmbiente: TipoAmbiente) -> String {
        "\(getUrlBase(tipoAmbiente: tipoAmbiente))/"
    }
}
