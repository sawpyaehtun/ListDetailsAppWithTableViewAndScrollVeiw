//
//  SearchViewController.swift
//  ListDetailsAppWithTableViewAndScrollVeiw
//
//  Created by saw pyaehtun on 23/08/2019.
//  Copyright © 2019 saw pyaehtun. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {
    @IBOutlet weak var techbtn: UIButton!
    @IBOutlet weak var sciencebtn: UIButton!
    @IBOutlet weak var imgSearch: UIImageView!
    
    var topics : [Topic] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        prepareData()
    }
    
    private func prepareData(){
        let topicOne = Topic(videoImage: UIImage(named: "one")!, topicTitle: "What's at the bottom of the ocean -- and how we're getting there", speakerName: "Vicotr Vescovo, David Biello")
        let topicTwo = Topic(videoImage: UIImage(named: "two")!, topicTitle: "The real relationship between your age and your chance of success", speakerName: "Albert-Laszio Barabasi")
        let topicThree = Topic(videoImage: UIImage(named: "three")!, topicTitle: "The fascination (and dangerous) places scientists aren't exploring", speakerName: "Ella Al-Shamahi")
        let topicFour = Topic(videoImage: UIImage(named: "four")!, topicTitle: "Origami robots that reshape and transform themselves", speakerName: "Jamie Paik")
         let topicFive = Topic(videoImage: UIImage(named: "five")!, topicTitle: "The future of psychedelic-assisted psychotherapy", speakerName: "Rick Doblin")
        
        topics.append(topicOne)
        topics.append(topicTwo)
        topics.append(topicThree)
        topics.append(topicFour)
        topics.append(topicFive)
        topics.append(contentsOf: topics)
        
    }
 
    private func setupUI(){
        let textAttributes = [NSAttributedString.Key.foregroundColor:UIColor.white]
        self.navigationController!.navigationBar.titleTextAttributes = textAttributes as [NSAttributedString.Key : Any]
        self.navigationController!.navigationBar.topItem!.title = "Search"
        imgSearch.tintColor = UIColor.white
        techbtn.layer.cornerRadius = techbtn.frame.height / 2
        sciencebtn.layer.cornerRadius = sciencebtn.frame.height / 2
    }
    
    @IBAction func btnScience(_ sender: Any) {
        goToTopicList(title: "Science")
    }
    
    @IBAction func btnTechnology(_ sender: Any) {
        goToTopicList(title: "Technology")
    }
    

    private func goToTopicList(title : String){
        let vc = TopicListViewController(nibName: String(describing: TopicListViewController.self), bundle: nil)
        vc.headerTitle = title
        vc.topics = topics
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
