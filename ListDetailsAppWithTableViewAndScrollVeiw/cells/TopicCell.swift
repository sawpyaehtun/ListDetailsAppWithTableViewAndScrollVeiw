//
//  TopicCell.swift
//  ListDetailsAppWithTableViewAndScrollVeiw
//
//  Created by saw pyaehtun on 23/08/2019.
//  Copyright © 2019 saw pyaehtun. All rights reserved.
//

import UIKit

class TopicCell: UITableViewCell {
    @IBOutlet weak var lblSpeakerName: UILabel!
    @IBOutlet weak var lblTopicTitle: UILabel!
    
    @IBOutlet weak var imgVideo: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setUp(topic : Topic) {
        imgVideo.image = topic.videoImage
        lblTopicTitle.text = topic.topicTitle
        lblSpeakerName.text = topic.speakerName
    }
    
}
