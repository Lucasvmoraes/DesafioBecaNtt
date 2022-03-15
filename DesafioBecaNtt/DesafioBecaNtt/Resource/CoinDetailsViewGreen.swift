//
//  CoinDetailsViewGreen.swift
//  DesafioBecaNtt
//
//  Created by Kelly Silva Araujo on 10/03/22.
//

import UIKit

class CoinDetailsViewGreen: UIView {
    
    @objc func buttonAddAction(sender: UIButton!) {
      print("button add")
    }
    
//    private lazy var firstLabel: UILabel = {
//        let label = UILabel()
//        label.textColor = .white
//        label.textAlignment = .center
//        label.font = UIFont.systemFont(ofSize: 17, weight: .bold)
//        label.text = "BTC"
//
//        label.translatesAutoresizingMaskIntoConstraints = false
//
//        return label
//    }()
    
    
    let viewOrange: UIView = {
        let view = UIView()
        view.backgroundColor = .orange
        view.layer.cornerRadius = 16.8
        view.translatesAutoresizingMaskIntoConstraints = false
            
        return view
    }()
    
    private lazy var symbolLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        label.text = "₿"
        
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private lazy var valueLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 24)
        label.text = "$31,010.20"
        
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private lazy var buttonAdd: UIButton = {
        let button = UIButton()
        let title = isFavorite ? "REMOVER" : "ADICIONAR"
        
        button.setTitle(title, for: .normal)
        button.addTarget(self, action: #selector(buttonAddAction), for: .touchUpInside)
        button.layer.borderWidth = 0.8
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.cornerRadius = 5
        
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    var isFavorite: Bool = false 
    
    init(frame: CGRect = .zero,
                  isFavorite: Bool) {
        self.isFavorite = isFavorite
        super.init(frame: frame)
        
//        setFirstLabel()
        setViewOrange()
        setSymbolLabel()
        setValueLabel()
        setButtonAdd()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
//    func setFirstLabel() {
//        self.addSubview(firstLabel)
//
//        NSLayoutConstraint.activate([
//            firstLabel.topAnchor.constraint(equalTo: topAnchor, constant: 12),
//            firstLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 70),
//            firstLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -50)
//        ])
//    }

    func setViewOrange() {
        self.addSubview(viewOrange)

        viewOrange.topAnchor.constraint(equalTo: self.topAnchor, constant: 80).isActive = true
        viewOrange.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        viewOrange.heightAnchor.constraint(equalToConstant: 35).isActive = true
        viewOrange.widthAnchor.constraint(equalToConstant: 35).isActive = true
    }

    func setSymbolLabel() {
        self.addSubview(symbolLabel)

        NSLayoutConstraint.activate([
            symbolLabel.centerXAnchor.constraint(equalTo: viewOrange.centerXAnchor),
            symbolLabel.centerYAnchor.constraint(equalTo: viewOrange.centerYAnchor)
        ])
    }

    func setValueLabel() {
        self.addSubview(valueLabel)

        NSLayoutConstraint.activate([
            valueLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            valueLabel.topAnchor.constraint(equalTo: self.viewOrange.bottomAnchor, constant: 15)
        ])
    }

    func setButtonAdd() {
        self.addSubview(buttonAdd)
        
        NSLayoutConstraint.activate([
            buttonAdd.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -50),
            buttonAdd.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            buttonAdd.widthAnchor.constraint(equalToConstant: 200),
            buttonAdd.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
}

