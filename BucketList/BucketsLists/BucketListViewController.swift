//  BucketListViewController.swift
//  BucketList
//
//  Created by Rose Maina on 10/05/2019.
//  Copyright © 2019 rose maina. All rights reserved.
//

import UIKit

class BucketListViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCellSize()
        
    }
}

extension BucketListViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    
    func setupCellSize() {
        let width = (view.frame.size.width - 10) / 2
        let layout = collectionView.collectionViewLayout as! UICollectionViewFlowLayout
        layout.itemSize = CGSize(width: width, height: width)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BucketListCollectionViewCell", for: indexPath)
        return cell
    }
    
}
