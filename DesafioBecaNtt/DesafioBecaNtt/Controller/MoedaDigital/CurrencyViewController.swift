//
//  CurrencyViewController.swift
//  DesafioBecaNtt
//
//  Created by Lucas Vinicius Moraes on 07/03/22.
//

import UIKit

class CurrencyViewController: UIViewController {
    
    // MARK: :-) Closures
    var onSelectedMoeda: ((_ trendingSelected: CurrencyViewModel) -> Void)?
    
    // MARK: - Views
    lazy var currencyView: CurrencyView = {
        let view = CurrencyView(frame: .zero, onSelectedMoeda: self.onSelectedMoeda)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .black
//        view.onSelectedMoeda = self.onSelectedMoeda
        
        return view
    }()
    
    let searchBar = UISearchBar()
    
    
    // MARK: - Life Cicle
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        let rect = CGRect(x: 0, y: 0, width: 150, height: 88)
        self.navigationItem.titleView = CustomTitleView(frame: rect)
        
            
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        searchBar.sizeToFit()
        searchBar.tintColor = .white
        searchBar.barTintColor = .black
        searchBar.placeholder = "Search"
        currencyView.tableView.tableHeaderView = searchBar
        
        
        let textFieldInsideSearchBar = searchBar.value(forKey: "searchField") as? UITextField
        textFieldInsideSearchBar?.textColor = .white

        self.view.backgroundColor = .black
        
//        let textAttributes = [NSAttributedString.Key.foregroundColor:UIColor.red,
//                              NSAttributedString.Key.font: UIFont.systemFont(ofSize: 40)]
//        navigationController?.navigationBar.titleTextAttributes = textAttributes

        setupCurrencyView()
        configureUI()
    }
    
    private func setupCurrencyView() {
        self.view.addSubview(currencyView)
        
        currencyView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        currencyView.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
        currencyView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        currencyView.rightAnchor.constraint(equalTo: self.view.rightAnchor).isActive = true
    }
    
    func configureUI() {
        navigationController?.navigationBar.isTranslucent = false
        navigationController?.navigationBar.barStyle = .black

    }
}
