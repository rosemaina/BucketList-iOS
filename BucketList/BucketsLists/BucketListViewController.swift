//  BucketListViewController.swift
//  BucketList
//
//  Created by Rose Maina on 10/05/2019.
//  Copyright © 2019 rose maina. All rights reserved.
//

import UIKit

class BucketListViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var addButton: UIBarButtonItem!
    @IBOutlet private weak var deleteButton:UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCellSize()
        
    }
    
    override func setEditing(_ editing: Bool, animated: Bool) {
        super.setEditing(editing, animated: animated)
        addButton.isEnabled = !editing
        
        collectionView.allowsMultipleSelection = editing
        collectionView.indexPathsForSelectedItems?.forEach {
            collectionView.deselectItem(at: $0, animated: false)
        }
        
        if !editing {
            navigationController?.isToolbarHidden = true
        }
        guard let indexes = collectionView?.indexPathsForVisibleItems else {
            return
        }
        for index in indexes {
            let cell = collectionView?.cellForItem(at: index) as! BucketListCollectionViewCell
            cell.isEditing = editing
        }
    }
    
    @IBAction func deleteSelected() {
        //        if let selected = collectionView?.indexPathsForSelectedItems {
        ////            dataSource.deleteItemsAtIndexPaths(selected)
        //            collectionView?.deleteItems(at: selected)
        //            navigationController?.isToolbarHidden = true
    }
}

extension BucketListViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    
    func setupRefreshControl() {
        // Refresh control
        let refresh = UIRefreshControl()
        refresh.addTarget(self, action: #selector(self.refresh), for: UIControl.Event.valueChanged)
        collectionView?.refreshControl = refresh
        // Toolbar
        navigationController?.isToolbarHidden = true
        // Edit
        navigationItem.leftBarButtonItem = editButtonItem
    }
    
    func setupCellSize() {
        let width = (view.frame.size.width - 10) / 2
        let layout = collectionView.collectionViewLayout as! UICollectionViewFlowLayout
        layout.itemSize = CGSize(width: width, height: width)
    }
    
    @objc func refresh() {
        // add items funcs
        
        collectionView?.refreshControl?.endRefreshing()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BucketListCollectionViewCell", for: indexPath)
        return cell
    }
    
}
