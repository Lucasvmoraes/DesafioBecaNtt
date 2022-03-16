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
    
        let favoriteScreen = FavoriteScreenCollectionViewController()
        let vc1 = UINavigationController(rootViewController: viewController)
        let vc2 = UINavigationController(rootViewController: favoriteScreen)
        
        vc1.title = "Moedas"
        vc2.title = "Favoritos"
        
        let tabBar = TabBarController(navigationController: navigationController,
                                      viewControllers: [vc1, vc2])
        tabBar.start()
    }
    
    func gotoDetails(viewModel: CurrencyViewModel) {
        let vm = viewModel
        let coordinator = MoedaDetailsCoordinator(navigationController: self.navigationController,
                                                  moedaViewModel: vm)
        coordinator.start()
    }
}
