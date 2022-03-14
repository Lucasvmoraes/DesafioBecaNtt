//
//  CurrencyTableViewCell.swift
//  DesafioBecaNtt
//
//  Created by Lucas Vinicius Moraes on 09/03/22.
//

import UIKit

class CurrencyTableViewCell: UITableViewCell {

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
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.contentView.backgroundColor = .black
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
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

        labelNameCurrency.topAnchor.constraint(equalTo: self.topAnchor, constant: 10).isActive = true
        labelNameCurrency.leftAnchor.constraint(equalTo: currencyModelView.rightAnchor, constant: 10).isActive = true
//        labelNameCurrency.rightAnchor.constraint(equalTo: favoriteIcon.leftAnchor, constant: -20).isActive = true
    }

    fileprivate func setupLabelCurrencyAbbreviation() {
        contentView.addSubview(labelCurrencyAbbreviation)

        labelCurrencyAbbreviation.topAnchor.constraint(equalTo: labelNameCurrency.bottomAnchor).isActive = true
        labelCurrencyAbbreviation.leftAnchor.constraint(equalTo: currencyModelView.rightAnchor, constant: 10).isActive = true
        labelCurrencyAbbreviation.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
    }

    fileprivate func setupFavoriteIcon() {
        contentView.addSubview(favoriteIcon)

        favoriteIcon.topAnchor.constraint(equalTo: self.topAnchor, constant: 10).isActive = true
        favoriteIcon.leftAnchor.constraint(equalTo: labelNameCurrency.rightAnchor).isActive = true
        favoriteIcon.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10).isActive = true
    }

    fileprivate func setupLabelValueCurrency() {
        contentView.addSubview(labelValueCurrency)

        labelValueCurrency.topAnchor.constraint(equalTo: self.topAnchor, constant: 10).isActive = true
        labelValueCurrency.leftAnchor.constraint(equalTo: favoriteIcon.rightAnchor, constant: 60).isActive = true
        labelValueCurrency.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20).isActive = true
        labelValueCurrency.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10).isActive = true
    }
}
