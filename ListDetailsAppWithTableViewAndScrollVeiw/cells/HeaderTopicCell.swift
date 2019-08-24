//
//  HeaderTopicCell.swift
//  ListDetailsAppWithTableViewAndScrollVeiw
//
//  Created by saw pyaehtun on 23/08/2019.
//  Copyright © 2019 saw pyaehtun. All rights reserved.
//

import UIKit

class HeaderTopicCell: UITableViewHeaderFooterView {
    @IBOutlet weak var lblHeaderTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setUpUI(title : String){
        lblHeaderTitle.text = title
    }
    
}
