//
//  CommunityRequestsVC.swift
//  Nuooly
//
//  Created by Mahnoor Fatima on 6/13/18.
//  Copyright © 2018 Mahnoor Fatima. All rights reserved.
//

import UIKit

class CommunityRequestsVC: UIViewController {


    @IBOutlet weak var requestsCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Community Requests"
        requestsCollectionView.delegate = self
        requestsCollectionView.dataSource = self
        registerCell()
    }
    
    func registerCell() {
        let cellNib = UINib(nibName: "CommunityRequestsCVC", bundle: nil)
        requestsCollectionView.register(cellNib, forCellWithReuseIdentifier: CommunityRequestsCellID)
    }
    
    deinit {
        print("deinit community reqests vc")
    }
    
}
extension CommunityRequestsVC : UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CommunityRequestsCellID, for: indexPath) as! CommunityRequestsCVC
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return getCellHeaderSize(Width: collectionView.frame.width, aspectRatio: 320/50, padding: 0)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    }
    
}
