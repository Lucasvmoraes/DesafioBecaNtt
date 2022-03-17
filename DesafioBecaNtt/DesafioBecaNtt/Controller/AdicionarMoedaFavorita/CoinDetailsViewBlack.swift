//
//  CoinDetailsViewBlack.swift
//  DesafioBecaNtt
//
//  Created by Kelly Silva Araujo on 15/03/22.
//

import UIKit

class CoinDetailsViewBlack: UIView {
   
    private lazy var volumesTradedLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 17)
        label.text = "volumes negociados"
        
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private lazy var lastHourLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
       // label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 17)
        label.text = "última hora"
        
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private lazy var lastMonthLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
       // label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 17)
        label.text = "último mês"
        
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private lazy var lastYearLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        //label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 17)
        label.text = "último ano"
        
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private lazy var valueLastHourLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        //label.textAlignment = .right
        label.font = UIFont.systemFont(ofSize: 17)
        label.text = "$ 123,456.78"
        
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private lazy var valueLastMonthLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        //label.textAlignment = .right
        label.font = UIFont.systemFont(ofSize: 17)
        label.text = "$ 123,456.78"
        
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private lazy var valueLastYearLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
       // label.textAlignment = .right
        label.font = UIFont.systemFont(ofSize: 17)
        label.text = "$ 123,456.78"
        
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    override init(frame: CGRect) {
    super.init(frame: .zero)
        
        setVolumesTradedLabel()
        setLastHourLabel()
        setLastMonthLabel()
        setLastYearLabel()
        setValueLastHourLabel()
        setValueLastMonthLabel()
        setValueLastYearLabel()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setVolumesTradedLabel() {
        self.addSubview(volumesTradedLabel)

        NSLayoutConstraint.activate([
            volumesTradedLabel.topAnchor.constraint(equalTo: topAnchor, constant: 15),
            volumesTradedLabel.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
    }
    
    func setLastHourLabel() {
        self.addSubview(lastHourLabel)

        NSLayoutConstraint.activate([
            lastHourLabel.topAnchor.constraint(equalTo: volumesTradedLabel.bottomAnchor, constant: 35),
            lastHourLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 14),
           // lastHourLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -14)
        ])
    }
    
    func setLastMonthLabel() {
        self.addSubview(lastMonthLabel)

        NSLayoutConstraint.activate([
            lastMonthLabel.topAnchor.constraint(equalTo: lastHourLabel.bottomAnchor, constant: 35),
            lastMonthLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 14),
            lastMonthLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -14)
        ])
    }

    func setLastYearLabel() {
        self.addSubview(lastYearLabel)

        NSLayoutConstraint.activate([
            lastYearLabel.topAnchor.constraint(equalTo: lastMonthLabel.bottomAnchor, constant: 35),
            lastYearLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 14),
            lastYearLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -14)
        ])
    }

    func setValueLastHourLabel() {
        self.addSubview(valueLastHourLabel)

        NSLayoutConstraint.activate([
            valueLastHourLabel.topAnchor.constraint(equalTo: volumesTradedLabel.bottomAnchor, constant: 35),
            valueLastHourLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -14)
        ])
    }

    func setValueLastMonthLabel() {
        self.addSubview(valueLastMonthLabel)

        NSLayoutConstraint.activate([
            valueLastMonthLabel.topAnchor.constraint(equalTo: valueLastHourLabel.bottomAnchor, constant: 35),
            valueLastMonthLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -14)
        ])
    }

    func setValueLastYearLabel() {
        self.addSubview(valueLastYearLabel)

        NSLayoutConstraint.activate([
            valueLastYearLabel.topAnchor.constraint(equalTo: valueLastMonthLabel.bottomAnchor, constant: 35),
            valueLastYearLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -14)
        ])
    }
}
