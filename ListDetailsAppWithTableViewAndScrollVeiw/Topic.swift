//
//  Topic.swift
//  ListDetailsAppWithTableViewAndScrollVeiw
//
//  Created by saw pyaehtun on 23/08/2019.
//  Copyright © 2019 saw pyaehtun. All rights reserved.
//

import Foundation
import UIKit

class Topic {
    
    var videoImage : UIImage?
    var topicTitle : String?
    var speakerName : String?
    
    init(videoImage : UIImage,topicTitle : String, speakerName : String) {
        self.videoImage = videoImage
        self.topicTitle = topicTitle
        self.speakerName = speakerName
    }
    
}
