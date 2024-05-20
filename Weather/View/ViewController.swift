//
//  ViewController.swift
//  Weather
//
//  Created by Uzair Ahmed on 20/05/24.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.title = "VC"
        
        let lb = UILabel()
        lb.frame = CGRect(x: 20, y: 320, width: 200, height: 50)
        lb.text = "Sample Text"
        lb.textColor = UIColor.gray
        view.addSubview(lb)
        
        let button = UIButton()
        button.frame = CGRect(x: 20, y: 410, width: 100, height: 45)
        button.setTitleColor(UIColor.blue, for: .normal)
        button.backgroundColor = UIColor.cyan
        button.setTitle("Submit", for: .normal)
        button.addTarget(self, action: #selector(submit), for: .touchUpInside)
        view.addSubview(button)
        
    }
    
    @objc func submit() {
        
        let vc = FullListViewController()
        vc.modalPresentationStyle = .fullScreen
        navigationController?.pushViewController(vc, animated: true)
        // self.tabBarController?.selectedIndex = 1
    }
    
}
