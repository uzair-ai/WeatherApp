//
//  TabBarController.swift
//  Weather
//
//  Created by Uzair Ahmed on 20/05/24.
//

import UIKit

class TabBarController: UITabBarController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.white
        
        setup()
        
    }
    
    private func setup() {
        
        let vc = ViewController()
        vc.title = "Home"
        vc.tabBarItem.image = UIImage(systemName: "house")
        
        let fullListVC = FullListViewController()
        fullListVC.title = "List"
        fullListVC.tabBarItem.image = UIImage(systemName: "list.bullet")
        
        let settingsVC = SettingsViewController()
        settingsVC.title = "Settings"
        settingsVC.tabBarItem.image = UIImage(systemName: "gearshape")
        
        viewControllers = [vc, fullListVC, settingsVC].map{ UINavigationController(rootViewController: $0) }
    }
    
}
