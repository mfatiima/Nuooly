//
//  CommunityFeedVC.swift
//  Nuooly
//
//  Created by Mahnoor Fatima on 6/13/18.
//  Copyright © 2018 Mahnoor Fatima. All rights reserved.
//

import UIKit

class CommunityFeedVC: UIViewController {

    @IBOutlet weak var feedCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.title = "Community Feed"
        feedCollectionView.delegate = self
        feedCollectionView.dataSource = self
        registerCell()
    }

    func registerCell() {
        let cellNib = UINib(nibName: "CommunityFeedCVC", bundle: nil)
        feedCollectionView.register(cellNib, forCellWithReuseIdentifier: CommunityFeedCellID)
    }
    
    deinit {
        print("deinit community feed vc")
    }

}
extension CommunityFeedVC : UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CommunityFeedCellID, for: indexPath) as! CommunityFeedCVC
            return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return getCellHeaderSize(Width: collectionView.frame.width, aspectRatio: 320/50, padding: 0)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    }
    
}

