//
//  MenuVC.swift
//  Nuooly
//
//  Created by Mahnoor Fatima on 6/12/18.
//  Copyright © 2018 Mahnoor Fatima. All rights reserved.
//

import UIKit
import KYDrawerController

var ID = ""
class MenuVC: UIViewController {


        @IBOutlet var userImage: UIImageView!
        @IBOutlet var Name: UILabel!
        @IBOutlet var menuTable:UITableView!
        
        var MyAccountDetails:[String:Any]!
        
        let titles:[String] = ["Home","Invite Friends","Linked Accounts","About Nuooly","Send Feedback","Terms and Services","Privacy Policy", "Contact Us", "Community Feed", "Community Requests","Sign Out"]
        
        
        let textAligments:[NSTextAlignment] = [.left,.left,.left,.left,.left,.left,.left,.left,.left,.left,.left]
        
        let fontStyles:[UIFont] = [.systemFont(ofSize: 15, weight: UIFont.Weight.medium),.systemFont(ofSize: 15, weight: UIFont.Weight.medium),.systemFont(ofSize: 15, weight: UIFont.Weight.medium),.systemFont(ofSize: 15, weight: UIFont.Weight.medium),.systemFont(ofSize: 15, weight: UIFont.Weight.medium),.systemFont(ofSize: 15, weight: UIFont.Weight.medium),.systemFont(ofSize: 15, weight: UIFont.Weight.medium),.systemFont(ofSize: 15, weight: UIFont.Weight.medium),.systemFont(ofSize: 15, weight: UIFont.Weight.medium),.systemFont(ofSize: 15, weight: UIFont.Weight.medium),.systemFont(ofSize: 15, weight: UIFont.Weight.medium)]
        
        let menuImages:[UIImage?] = [nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil]
        let BGColors:[UIColor] = [.clear,.clear,.clear,.clear,.clear,.clear,.clear,.clear,.clear,.clear,.clear]
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            menuTable.estimatedRowHeight = 54.0
            
        }
        
        override func viewWillLayoutSubviews() {
            super.viewWillLayoutSubviews()
            
            self.userImage.getRounded(cornerRaius: self.userImage.frame.width/2)
        }
        
        func closeMenu() {
            if let drawerController = parent as? KYDrawerController {
                drawerController.setDrawerState(.closed, animated: true)
            }
        }
        
        deinit {
            print("Menu View deinit")
        }
        
    }
    
    extension MenuVC: UITableViewDelegate , UITableViewDataSource {
        
        func numberOfSections(in tableView: UITableView) -> Int {
            
            return 1
        }
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return titles.count
        }
        
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            
            if titles[indexPath.row] == "" {
                return 1
            }
            
            return getCellHeaderSize(Width: self.view.frame.width, aspectRatio: 240/54, padding: 0).height
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "menuCell", for: indexPath)
            
            cell.textLabel?.text = titles[indexPath.row]
            cell.textLabel?.textColor = .darkGray
            cell.textLabel?.font = fontStyles[indexPath.row]
            cell.textLabel?.textAlignment = textAligments[indexPath.row]
            cell.backgroundColor = BGColors[indexPath.row]
            cell.imageView?.tintColor = .gray
            cell.imageView?.image = menuImages[indexPath.row]
            return cell
        }
        
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            
            ID = (titles[indexPath.row] == "") ? "" : titles[indexPath.row]
            closeMenu()
        }
        
}

