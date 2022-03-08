//
//  CoinDetailsViewController.swift
//  DesafioBecaNtt
//
//  Created by Kelly Silva Araujo on 07/03/22.
//

import Foundation
import UIKit

class CoinDetailsViewController: UIViewController {
    // MARK: Visual components
    
    let coinDetailsView: CoinDetailsView = {
        let view = CoinDetailsView()
        
        return view
    }()
    
    // MARK: Life Cycle
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.title = "Detalhes"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .backgroundColorSubView
        setCoinDetailsView()
        
    }
    func setCoinDetailsView() {
        self.view.addSubview(coinDetailsView)
      
        coinDetailsView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        coinDetailsView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        coinDetailsView.widthAnchor.constraint(equalTo: self.view.widthAnchor).isActive = true
        coinDetailsView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        
    }
}
