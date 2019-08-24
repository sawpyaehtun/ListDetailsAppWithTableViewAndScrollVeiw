//
//  TopicListTabBar.swift
//  ListDetailsAppWithTableViewAndScrollVeiw
//
//  Created by saw pyaehtun on 24/08/2019.
//  Copyright © 2019 saw pyaehtun. All rights reserved.
//

import UIKit

class TopicListTabBar: UITabBarController {
    
    var headerTitle : String?
    var topics : [Topic]?
    override func viewDidLoad() {
        super.viewDidLoad()

        tabBar.barTintColor = .black
        setupTabBar()
    }
    
    private func setupTabBar(){
        let topicVc = TopicListViewController(nibName: String(describing: TopicListViewController.self), bundle: nil)
        topicVc.headerTitle = headerTitle
        topicVc.topics = topics!
        let topicListViewController = createNacTabbarVc(vc: topicVc, selected: UIImage(named: "home")!, unselected: UIImage(named: "search")!)
        
        viewControllers = [topicListViewController]
    }
}

extension TopicListTabBar{
    private func createNacTabbarVc(vc : UIViewController, selected : UIImage, unselected : UIImage) -> UINavigationController{
        let viewController = vc
        let navController = UINavigationController(rootViewController: viewController)
        navController.tabBarItem.selectedImage = selected
        navController.tabBarItem.image = unselected
        return navController
    }
}
