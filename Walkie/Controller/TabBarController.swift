//
//  TabBarController.swift
//  Walkie
//
//  Created by Patrick Samuel Owen Saritua Sinaga on 24/05/23.
//

import Foundation
import UIKit

class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let mainViewController = HomeViewController()
        let recordTimeViewController = RecordTimeViewController()
        let historyViewController = HistoryViewController() //ini nanti diganti dengan history
        
        mainViewController.tabBarItem = UITabBarItem(title: "Home", image: UIImage(named: "iconHome"), tag: 0)
        
        recordTimeViewController.tabBarItem = UITabBarItem(title: "Record", image: UIImage(named: "iconRecord"), tag: 1)
        
        historyViewController.tabBarItem = UITabBarItem(title: "History", image: UIImage(named: "iconHistory"), tag: 2)
        
        viewControllers = [mainViewController, recordTimeViewController,historyViewController]
    }
}
