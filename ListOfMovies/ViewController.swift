//
//  ViewController.swift
//  ListOfMovies
//
//  Created by Sanatzhan Aimukambetov on 02.12.2020.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    let topView = UIView()
    let tableView = TableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        
    }
    
    private func setupViews() {
        
        view.addSubview(topView)
        view.addSubview(tableView)
        
        view.backgroundColor = UIColor(red: 245/255, green: 202/255, blue: 60/255, alpha: 1)
        topView.backgroundColor = UIColor(red: 64/255, green: 148/255, blue: 76/255, alpha: 1)
        
        topView.snp.makeConstraints { (make) in
            make.top.leading.trailing.equalToSuperview()
            make.height.equalTo(50)
        }
        
        tableView.snp.makeConstraints { (make) in
            make.top.equalTo(topView.snp.bottom).offset(5)
            make.leading.trailing.bottom.equalToSuperview()
        }
    }
    
}

