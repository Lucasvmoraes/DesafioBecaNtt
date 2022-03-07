//
//  MoedaView.swift
//  DesafioBecaNtt
//
//  Created by Lucas Vinicius Moraes on 07/03/22.
//

import Foundation
import UIKit

class MoedaView: UIView {
    
    var subtitleLabel: UILabel = {
        
        let label = UILabel(frame: .zero)
        label.text = "06 mar 2022"
        label.textColor = .white
        
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        loadUIElements()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: Load Elementos Visuais
    
    private func loadUIElements() {
        setupSubtitleLabel()
    }
    
    private func setupSubtitleLabel() {
        self.addSubview(subtitleLabel)
        
        subtitleLabel.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        subtitleLabel.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        subtitleLabel.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        subtitleLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
    }
}
