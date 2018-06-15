//
//  SendFeedbackVC.swift
//  Nuooly
//
//  Created by Mahnoor Fatima on 6/12/18.
//  Copyright © 2018 Mahnoor Fatima. All rights reserved.
//

import UIKit

class SendFeedbackVC: UIViewController {

    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var messageTV: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.title = "Send Feedback"
    }

    @IBAction func sendBtnAction(_ sender: Any) {
    }
    
    deinit {
        print("deinit send feedback vc")
    }
    
}
