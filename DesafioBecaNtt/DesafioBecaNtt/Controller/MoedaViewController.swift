//
//  MoedaViewController.swift
//  DesafioBecaNtt
//
//  Created by Lucas Vinicius Moraes on 07/03/22.
//

import UIKit

class MoedaViewController: UIViewController {
    
    // MARK: - Views
    var moedaView: MoedaView = {
        let view = MoedaView(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = true
        view.backgroundColor = .black
        
        return view
    }()
    
    
    
    // MARK: - Life Cicle
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.title = "Moeda Digital"
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .red
        
        let textAttributes = [NSAttributedString.Key.foregroundColor:UIColor.white, NSAttributedString.Key.font: UIFont.systemFont(ofSize: 24)]
        navigationController?.navigationBar.titleTextAttributes = textAttributes

        setupMoedaView()
    }
    
    private func setupMoedaView() {
        self.view.addSubview(moedaView)
        
        moedaView.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
        moedaView.rightAnchor.constraint(equalTo: self.view.rightAnchor).isActive = true
        moedaView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        moedaView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
    }
}
