//
//  TabBarController.swift
//  DesafioBecaNtt
//
//  Created by Lucas Vinicius Moraes on 10/03/22.
//

import UIKit

class TabBarController: Coordinator {
    
    var navigationController: UINavigationController
    var viewControllers: [UINavigationController]
    
    init(navigationController: UINavigationController,
         viewControllers: [UINavigationController]) {
        self.navigationController = navigationController
        self.viewControllers = viewControllers
    }
    
    func start() {
        let tabBarVC = UITabBarController()
        
        tabBarVC.setViewControllers(viewControllers, animated: false)
        tabBarVC.tabBar.tintColor = .white
        tabBarVC.tabBar.barTintColor = .black
        
        guard let items = tabBarVC.tabBar.items else {
            return
        }

        let images = ["dollar", "starWhite"]
        
        
        for x in 0..<items.count {

            let image = UIImage(named: images[x])?.resizeImage(targetSize: CGSize(width: 20.0, height: 20.0))

            items[x].image = image

        }

        self.navigationController.pushViewController(tabBarVC, animated: true)
    }
}
