//
//  CommunityFeedCVC.swift
//  Nuooly
//
//  Created by Mahnoor Fatima on 6/13/18.
//  Copyright © 2018 Mahnoor Fatima. All rights reserved.
//

import UIKit

class CommunityFeedCVC: UICollectionViewCell {

    @IBOutlet weak var userImgView: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var activityLbl: UILabel!
    @IBOutlet weak var deleteBtn: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()

        self.userImgView.getRounded(cornerRaius: self.userImgView.frame.width/2)
        self.userImgView.layer.borderColor = UIColor(red: 0xE5/255, green: 0x69/255, blue: 0, alpha: 1).cgColor
    }

    @IBAction func deleteBtnAction(_ sender: Any) {
    }

}
