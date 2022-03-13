//
//  MoedaViewModel.swift
//  DesafioBecaNtt
//
//  Created by Lucas Vinicius Moraes on 07/03/22.
//

import Foundation
import UIKit

class CurrencyViewModel {
    
    var currencyName: String = "Bitcoin"
    var currencySymbol: String = "₿"
    var currencyAbbreviation: String = "BTC"
    var favoriteIcon: String = "starWhite"
    var valueCurrency: String = "$ 31.010,20"
    var isfavorite: Bool = false
    
    init(currencyName: String,
         currencySymbol: String,
         currencyAbbreviation: String,
         favoriteIcon: String,
         valueCurrency: String,
         isfavorite: Bool) {
        self.currencyName = currencyName
        self.currencySymbol = currencySymbol
        self.currencyAbbreviation = currencyAbbreviation
        self.favoriteIcon = favoriteIcon
        self.valueCurrency = valueCurrency
        self.isfavorite = isfavorite
    }
    
    init() {}
}
