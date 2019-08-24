//
//  ProfileViewController.swift
//  ListDetailsAppWithTableViewAndScrollVeiw
//
//  Created by saw pyaehtun on 23/08/2019.
//  Copyright © 2019 saw pyaehtun. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        
    }
    
    private func setupUI(){
        let textAttributes = [NSAttributedString.Key.foregroundColor:UIColor.white]
        self.navigationController!.navigationBar.titleTextAttributes = textAttributes as [NSAttributedString.Key : Any]
        self.navigationController!.navigationBar.topItem!.title = "Profile"
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
