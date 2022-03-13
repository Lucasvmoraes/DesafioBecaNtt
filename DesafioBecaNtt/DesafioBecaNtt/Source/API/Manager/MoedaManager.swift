//
//  MoedaManager.swift
//  DesafioBecaNtt
//
//  Created by Lucas Vinicius Moraes on 07/03/22.
//

import Foundation

protocol MoedaManagerProtocol: BaseManager {
    func requestMoedas(mediaType: String,
                       timeWindow: String,
                       sucessHandler: @escaping ((CurrencyViewModel) -> Void),
                       failureHandler: @escaping ApiProviderFailureHandler)
}

