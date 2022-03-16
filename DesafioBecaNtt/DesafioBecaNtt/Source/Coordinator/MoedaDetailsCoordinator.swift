//
//  MoedaDetailsCoordinator.swift
//  DesafioBecaNtt
//
//  Created by Lucas Vinicius Moraes on 11/03/22.
//

import UIKit

class MoedaDetailsCoordinator: Coordinator {
    var navigationController: UINavigationController
    let moedaViewModel: CurrencyViewModel
    
    init(navigationController: UINavigationController, moedaViewModel: CurrencyViewModel) {
        self.navigationController = navigationController
        self.moedaViewModel = moedaViewModel
    }
    
    func start() {
        let viewController = CoinDetailsViewController() //(viewModel: moedaViewModel)
        self.navigationController.pushViewController(viewController, animated: false)
    }
}
