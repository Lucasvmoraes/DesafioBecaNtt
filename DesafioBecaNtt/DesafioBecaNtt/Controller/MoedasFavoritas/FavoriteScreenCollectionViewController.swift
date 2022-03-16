//
//  FavoriteScreenCollectionViewController.swift
//  DesafioBecaNtt
//
//  Created by Lucas Vinicius Moraes on 14/03/22.
//


import UIKit

class FavoriteScreenCollectionViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.itemSize = CGSize(width: view.frame.size.width/3, height: view.frame.size.width/3)
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = .black
        
        collectionView.register(CustomCollectionViewCell.self, forCellWithReuseIdentifier: "Cell")
        
        return collectionView
    }()
    
    // MARK: - Life Cicle
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        let rect = CGRect(x: 0, y: 0, width: 150, height: 88)
        self.navigationItem.titleView = CustomTitleView(frame: rect)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.frame = view.bounds
        
        setupCollectionView()
        configureUI()
    }
    
    private func setupCollectionView() {
        view.addSubview(collectionView)

        collectionView.topAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        collectionView.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
        collectionView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        collectionView.rightAnchor.constraint(equalTo: self.view.rightAnchor).isActive = true
    }
    
    func configureUI() {
        navigationController?.navigationBar.isTranslucent = false
        navigationController?.navigationBar.barStyle = .black

    }

    // MARK: UICollectionViewDataSource

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as? CustomCollectionViewCell {
            cell.contentView.backgroundColor = .backgroundColorSubView
            cell.layer.cornerRadius = 10
            cell.layer.masksToBounds = true
            cell.loadUIElements()
            
            return cell
        }
        return UICollectionViewCell()
    }
    
//    minimumInteritemSpacingForSection
}

