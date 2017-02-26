//
//  DataSource.swift
//  UITableViewGroupVSPlain
//
//  Created by huahuahu on 2017/2/15.
//  Copyright © 2017年 huahuahu. All rights reserved.
//

import Foundation
import UIKit

class DataSource:NSObject, UITableViewDataSource
{
    
    static let k_NumberSections = 3
    static let k_numberOfRowsInSection = 5
    static let sharedSingleOne = DataSource()
    static let k_reuseIdStr = "reuseIdStr"
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataSource.k_NumberSections
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return DataSource.k_numberOfRowsInSection
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: DataSource.k_reuseIdStr)
        if cell != nil {
            
        }
        else
        {
            cell = UITableViewCell.init()
        }
            cell?.textLabel?.text = String.init(format: "row %d, section %d", indexPath.row,indexPath.section)
        return cell!
        
    }
}
