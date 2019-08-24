//
//  TopicListViewController.swift
//  ListDetailsAppWithTableViewAndScrollVeiw
//
//  Created by saw pyaehtun on 23/08/2019.
//  Copyright © 2019 saw pyaehtun. All rights reserved.
//

import UIKit

class TopicListViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var headerTitle : String?
    
    var topics : [Topic] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
        setupDelegateAndDataSource()
        registerNIB()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationItem.title = ""
        super.viewWillAppear(animated)
    }
    private func setUpUI(){
        tableView.separatorStyle = .none
//        self.title = headerTitle
        
//        let textAttributes = [NSAttributedString.Key.foregroundColor:UIColor(named: "bgColor")]
//        self.navigationController!.navigationBar.titleTextAttributes = textAttributes as [NSAttributedString.Key : Any]
//        self.navigationController!.navigationBar.topItem!.title = headerTitle
    }
    
    private func registerNIB(){
        
        tableView.register(UINib(nibName: String(describing: HeaderTopicCell.self), bundle: nil), forHeaderFooterViewReuseIdentifier: String(describing: HeaderTopicCell.self))
        
        tableView.register(UINib(nibName: String(describing: TopicCell.self), bundle: nil), forCellReuseIdentifier: String(describing: TopicCell.self))
    }
    
    private func setupDelegateAndDataSource(){
        tableView.delegate = self
        tableView.dataSource = self
//        tableView.estimatedRowHeight = 400
//        tableView.rowHeight = UITableView.automaticDimension
    }
    
    private func showDetail(index : Int){
        let vc = DetailsViewController(nibName: String(describing: DetailsViewController.self), bundle: nil)
        vc.headerTitle = headerTitle
        navigationController?.pushViewController(vc, animated: true)
    }

}

extension TopicListViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return topics.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: TopicCell.self), for: indexPath) as! TopicCell
        cell.setUp(topic: topics[indexPath.row])
        return cell
    }
    
    
}

extension TopicListViewController : UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        if let headerCell = tableView.dequeueReusableHeaderFooterView(withIdentifier: String(describing: HeaderTopicCell.self)) as? HeaderTopicCell {
            headerCell.setUpUI(title: headerTitle!)
            return headerCell
        } else {
            return UITableViewHeaderFooterView()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        showDetail(index: indexPath.row)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    
}
