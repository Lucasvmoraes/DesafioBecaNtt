//
//  MoedaCoordinator.swift
//  DesafioBecaNtt
//
//  Created by Lucas Vinicius Moraes on 07/03/22.
//

import Foundation
import UIKit

class MoedaCoordinator: Coordinator {
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = CurrencyViewController()
        viewController.onSelectedMoeda = { viewModel in
            self.gotoDetails(viewModel: viewModel)
        }
        self.navigationController.pushViewController(viewController, animated: false)
    }
    
    func gotoDetails(viewModel: CurrencyViewModel) {
        let vm = viewModel
        let coordinator = MoedaDetailsCoordinator(navigationController: self.navigationController,
                                                  moedaViewModel: vm)
        coordinator.start()
    }
}
