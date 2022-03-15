//
//  CoinDetailsViewController.swift
//  DesafioBecaNtt
//
//  Created by Kelly Silva Araujo on 14/03/22.
//

import UIKit

class CoinDetailsViewController: UIViewController {

    lazy var coinDetailsViewGreen: CoinDetailsViewGreen = {
        let view = CoinDetailsViewGreen(isFavorite: self.isFavorite)
        view.backgroundColor = .backgroundColorSubView
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    var isFavorite: Bool
    
    init(isFavorite: Bool = false) {
        self.isFavorite = isFavorite
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let coinDetailsViewBlack: CoinDetailsViewBlack = {
        let view = CoinDetailsViewBlack()
        view.backgroundColor = .black
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .backgroundColorSubView
        
        setViewGreen()
        setViewBlack()
        configureNav()
    }

    func configureNav() {
        self.title = "BTC"
        navigationController?.navigationBar.barStyle = .black
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
        self.navigationController?.navigationBar.tintColor = UIColor.white
        navigationController?.navigationBar.backItem?.title = "Voltar"
    }
    
    func setViewGreen() {
        self.view.addSubview(coinDetailsViewGreen)
        coinDetailsViewGreen.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 18).isActive = true
        coinDetailsViewGreen.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
        coinDetailsViewGreen.rightAnchor.constraint(equalTo: self.view.rightAnchor).isActive = true
        coinDetailsViewGreen.heightAnchor.constraint(equalToConstant: 300).isActive = true
    }
    
    func setViewBlack() {
        self.view.addSubview(coinDetailsViewBlack)
        coinDetailsViewBlack.topAnchor.constraint(equalTo: coinDetailsViewGreen.bottomAnchor).isActive = true
        coinDetailsViewBlack.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
        coinDetailsViewBlack.rightAnchor.constraint(equalTo: self.view.rightAnchor).isActive = true
        coinDetailsViewBlack.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
    }
}

