//
//  HomeCVC.swift
//  Nuooly
//
//  Created by Mahnoor Fatima on 6/13/18.
//  Copyright © 2018 Mahnoor Fatima. All rights reserved.
//

import UIKit

class HomeCVC: UICollectionViewCell {

    @IBOutlet weak var titleImgView: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var countLbl: UILabel!
    
    let titles:[String] = ["Message","Project Alerts","Community Feed","Create Profile","My Project","My Watching List","Find a Project","Grow your Team","My Profile","Requests","My Connections"]
                           
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.titleImgView.getRounded(cornerRaius: 0)
        self.giveShadow(cornerRaius: 0)
        self.titleImgView.layer.borderColor = UIColor.darkGray.cgColor
    }

}
