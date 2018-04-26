//
//  SecondViewController.swift
//  StackViewTesting
//
//  Created by osanai on 2018/04/25.
//  Copyright © 2018年 osanai.sample.eventworks. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    

    @IBOutlet weak var sampleTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sampleTableView.delegate = self
        sampleTableView.dataSource = self
        sampleTableView.estimatedRowHeight = UITableViewAutomaticDimension
        sampleTableView.rowHeight = UITableViewAutomaticDimension
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "SampleTableViewCell", for: indexPath) as! SampleTableViewCell
        
        if (indexPath.row % 4 == 0) {
            cell.viewB.isHidden = true
        }
        else {
            cell.viewB.isHidden = false
        }
        if (indexPath.row % 3 == 0) {
            cell.viewC.isHidden = true
        }
        else {
            cell.viewC.isHidden = false
        }
        
        cell.viewX.layer.shadowColor = UIColor.black.cgColor
        cell.viewX.layer.shadowOffset = CGSize(width: 5, height: 5)
        cell.viewX.layer.shadowOpacity = 0.8
        cell.viewX.layer.shadowRadius = 10
        
//        cell.viewY.backgroundColor = .clear
//        cell.viewY.layer.shadowColor = UIColor.black.cgColor
//        cell.viewY.layer.shadowOffset = CGSize(width: 0, height: 0)
//        cell.viewY.layer.shadowOpacity = 0.9
//        cell.viewY.layer.shadowRadius = 15
//        cell.viewY.layer.shadowPath = UIBezierPath(roundedRect: cell.viewY.bounds, cornerRadius: cell.baseView.layer.cornerRadius).cgPath
        
        return cell
    }

}
