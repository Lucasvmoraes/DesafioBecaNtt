//
//  ViewController.swift
//  DesafioBecaNtt
//
//  Created by Kelly Silva Araujo on 05/03/22.
//

import UIKit

class ViewController: UIViewController {

    let coinDetailsViewGreen: CoinDetailsViewGreen = {
        let view = CoinDetailsViewGreen()
        view.backgroundColor = .backgroundColorSubView
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    let coinDetailsViewBlack: CoinDetailsViewBlack = {
        let view = CoinDetailsViewBlack()
        view.backgroundColor = .black
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        setViewGreen()
        setViewBlack()
    }
    
    func setViewGreen() {
        self.view.addSubview(coinDetailsViewGreen)
        coinDetailsViewGreen.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 18).isActive = true
        coinDetailsViewGreen.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 0).isActive = true
        coinDetailsViewGreen.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -0).isActive = true
        coinDetailsViewGreen.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -270).isActive = true
    }
    
    func setViewBlack() {
        self.view.addSubview(coinDetailsViewBlack)
        coinDetailsViewBlack.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 295).isActive = true
        coinDetailsViewBlack.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 0).isActive = true
        coinDetailsViewBlack.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -0).isActive = true
        coinDetailsViewBlack.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0).isActive = true
    }
}

