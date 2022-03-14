//
//  CustomTitleView.swift
//  DesafioBecaNtt
//
//  Created by Lucas Vinicius Moraes on 08/03/22.
//

import UIKit


class CustomTitleView: UIView {
    
    // MARK: - Itens Visuais
    lazy var titleLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Moeda Digital"
        label.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        label.textColor = .white
        return label
        
    }()
    
    
    lazy var subtitleLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "06 mar 2022"
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = .white
        return label
    }()
    
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        self.backgroundColor = .black

        loadUIElements()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: Load Elementos Visuais

    private func loadUIElements() {
        setuptitleLabel()
        setupSubtitleLabel()
    }

    private func setuptitleLabel() {
        self.addSubview(titleLabel)

        titleLabel.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        titleLabel.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        titleLabel.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true

    }

    private func setupSubtitleLabel() {
        self.addSubview(subtitleLabel)

        subtitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 5).isActive = true
        subtitleLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 27).isActive = true
        subtitleLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        subtitleLabel.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
    }
}



