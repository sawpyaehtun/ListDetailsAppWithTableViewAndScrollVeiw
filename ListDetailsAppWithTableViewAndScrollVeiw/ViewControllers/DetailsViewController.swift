//
//  DetailsViewController.swift
//  ListDetailsAppWithTableViewAndScrollVeiw
//
//  Created by saw pyaehtun on 23/08/2019.
//  Copyright © 2019 saw pyaehtun. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    
    var headerTitle : String?
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblDetails: UILabel!
    @IBOutlet weak var lblSpeakerBio: UILabel!
    @IBOutlet weak var imgSepaker: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
    }
    
    private func setUpUI(){
//        print(headerTitle)
//        self.navigationController?.navigationItem.title = headerTitle
        self.navigationController!.navigationBar.topItem!.title = headerTitle
        
    lblTitle.text = "The human skills we need in an unpredictable world"
    lblDetails.text = "The more we rely on technology to make us efficient, the fewer skills we have to confront the unexpected, says writer and entrepreneur Margaret Heffnan. She shares why we need less tech and more messy human skills -- imagination, humility, bravery -- to solve problems in business, government and life in an unpredictable age. \"We are brave enough to invent things we've never seen before,\" she say. \"We can make any future we choose.\""
        
    lblSpeakerBio.text = "The former CEO of five businesses, Margaret Heffernan explores the all-too-human thought patterns that lead organizations and managers astray."
        
        imgSepaker.layer.cornerRadius = imgSepaker.frame.width / 2
    }

}
