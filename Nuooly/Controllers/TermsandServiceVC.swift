//
//  TermsandServiceVC.swift
//  Nuooly
//
//  Created by Mahnoor Fatima on 6/12/18.
//  Copyright © 2018 Mahnoor Fatima. All rights reserved.
//

import UIKit

class TermsandServiceVC: UIViewController {

    @IBOutlet weak var descriptionTV: UITextView!
    @IBOutlet weak var downloadPdfBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Terms and Services"
        // Do any additional setup after loading the view.
    }

    @IBAction func downloadPDF(_ sender: Any) {
    }
    
    deinit {
        print("deinit terms and service vc")
    }

}
