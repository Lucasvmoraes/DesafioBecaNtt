//
//  CurrencyView.swift
//  DesafioBecaNtt
//
//  Created by Lucas Vinicius Moraes on 07/03/22.
//

import Foundation
import UIKit

typealias Callback = ((_ trendingSelected: CurrencyViewModel) -> Void)

class CurrencyView: UIView {
    
    var onSelectedMoeda: Callback?
    
    // MARK: Constants
    private let cellId = "moedaId"
    private let rowHeight:CGFloat = 60
    
    // MARK: - Itens Visuais
    lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .plain)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.backgroundColor = .black
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(CurrencyTableViewCell.self, forCellReuseIdentifier: cellId)

        return tableView
    }()
    
    // MARK: - Inicializadores
     init(frame: CGRect,
          onSelectedMoeda: Callback?) {
         self.onSelectedMoeda = onSelectedMoeda
        super.init(frame: frame)
        
        loadUIElements()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: Load Elementos Visuais
    
    private func loadUIElements() {
        setTableView()
        
    }
    
    private func setTableView() {
        self.addSubview(tableView)

        tableView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        tableView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
    }
}

extension CurrencyView: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let callback = onSelectedMoeda {
            callback(CurrencyViewModel())
        } else {
            print("Tem não")
        }
    }
}

extension CurrencyView: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return self.rowHeight
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! CurrencyTableViewCell
        cell.loadUIElements()
        return cell
    }
    
}

