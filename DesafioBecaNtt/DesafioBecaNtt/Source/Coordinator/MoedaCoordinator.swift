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
        let viewController = MoedaViewController()
        
        self.navigationController.pushViewController(viewController, animated: true)
    }
}
    
