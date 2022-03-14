//
//  AddFavoriteViewController.swift
//  DesafioBecaNtt
//
//  Created by Lucas Vinicius Moraes on 11/03/22.
//

import UIKit

class AddFavoriteViewController: UIViewController {
    
    let viewModel: CurrencyViewModel
    
    init(viewModel: CurrencyViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
