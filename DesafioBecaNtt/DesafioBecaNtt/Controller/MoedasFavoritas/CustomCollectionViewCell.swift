//
//  CustomCollectionViewCell.swift
//  DesafioBecaNtt
//
//  Created by Lucas Vinicius Moraes on 14/03/22.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    
    let currencyModelView: UIView = {
        let iv = UIView()

        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.backgroundColor = .orange
        iv.layer.cornerRadius = 20
        return iv
    }()

    let symbolLabel: UILabel = {
        let label = UILabel()
        label.text = "₿"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()


    let labelNameCurrency: UILabel = {
        let label = UILabel()
        label.text = "Bitcoin"
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    let labelCurrencyAbbreviation: UILabel = {
        let label = UILabel()
        label.text = "BTC"
        label.textColor = .white
        label.font = label.font.withSize(10)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    let favoriteIcon: UILabel = {

    let label = UILabel()
        label.text = "⭐"
        label.textColor = .white
        label.font = label.font.withSize(10)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    let labelValueCurrency: UILabel = {
        let label = UILabel()
        label.text = "$ 31.010,20"
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()


    func loadUIElements() {
        setupCurrencyModelView()
        setupSymbolLabel()
        setupLabelNameCurrency()
        setupLabelCurrencyAbbreviation()
        setupFavoriteIcon()
        setupLabelValueCurrency()
    }

    fileprivate func setupCurrencyModelView() {
        contentView.addSubview(currencyModelView)

        currencyModelView.topAnchor.constraint(equalTo: self.topAnchor, constant: 10).isActive = true
        currencyModelView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20).isActive = true
        currencyModelView.widthAnchor.constraint(equalToConstant: 40).isActive = true
        currencyModelView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10).isActive = true
    }

    fileprivate func setupSymbolLabel() {
        contentView.addSubview(symbolLabel)

        symbolLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 10).isActive = true
        symbolLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 31).isActive = true
        symbolLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10).isActive = true
    }


    fileprivate func setupLabelNameCurrency() {
        contentView.addSubview(labelNameCurrency)

        labelNameCurrency.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        labelNameCurrency.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        labelNameCurrency.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
    }

    fileprivate func setupLabelCurrencyAbbreviation() {
        contentView.addSubview(labelCurrencyAbbreviation)

        labelCurrencyAbbreviation.topAnchor.constraint(equalTo: labelNameCurrency.bottomAnchor).isActive = true
        labelCurrencyAbbreviation.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        labelCurrencyAbbreviation.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        
    }


    fileprivate func setupLabelValueCurrency() {
        contentView.addSubview(labelValueCurrency)

        labelValueCurrency.topAnchor.constraint(equalTo: labelCurrencyAbbreviation.bottomAnchor).isActive = true
        labelValueCurrency.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10).isActive = true
        labelValueCurrency.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -10).isActive = true
        labelValueCurrency.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10).isActive = true
    }
    
    fileprivate func setupFavoriteIcon() {
        contentView.addSubview(favoriteIcon)
        
        favoriteIcon.topAnchor.constraint(equalTo: self.topAnchor, constant: 10).isActive = true
        favoriteIcon.leftAnchor.constraint(equalTo: labelNameCurrency.rightAnchor).isActive = true
        favoriteIcon.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10).isActive = true
    }
}

