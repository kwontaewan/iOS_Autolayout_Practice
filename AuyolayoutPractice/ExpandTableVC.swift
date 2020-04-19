//
//  ExpandTableVC.swift
//  AuyolayoutPractice
//
//  Created by Gunter on 2020/04/19.
//  Copyright © 2020 Gunter. All rights reserved.
//

import UIKit

class ExpandCell: UITableViewCell {
    
    @IBOutlet weak var descriptionLabel: UILabel!
}

class ExpandTableVC: UIViewController, UITableViewDataSource , UITableViewDelegate {

    struct ExpandDataModel {
        var description: String
        var isExpand: Bool
    }
    
    var dataModels = [ExpandDataModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let textArray = [
            "short Text",
            "long long long long long long long long long long long ong long long long long long long long long long long ong long long long long long long long long long long ong long long long long long long long long long long",
            "short Text",
            "long long long long long long long long long long long ong long long long long long long long long long long ong long long long long long long long long long long ong long long long long long long long long long long",
            "short Text",
            "long long long long long long long long long long long ong long long long long long long long long long long ong long long long long long long long long long long ong long long long long long long long long long long",
              "long long long long long long long long long long long ong long long long long long long long long long long ong long long long long long long long long long long ong long long long long long long long long long long long long long long long long long long long long long ong long long long long long long long long long long ong long long long long long long long long long long ong long long long long long long long long long long long long long long long long long long long long long ong long long long long long long long long long long ong long long long long long long long long long long ong long long long long long long long long long long long long long long long long long long long long long ong long long long long long long long long long long ong long long long long long long long long long long ong long long long long long long long long long long"
        ]
        
        for (_, value) in textArray.enumerated() {
            dataModels.append(
                ExpandDataModel(
                    description: value,
                    isExpand: false
                )
            )
        }
        
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataModels.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(
            withIdentifier: "expandCell_ID",
            for: indexPath
        ) as! ExpandCell
        
        cell.descriptionLabel.text = dataModels[indexPath.row].description
        
        if dataModels[indexPath.row].isExpand == true {
            cell.descriptionLabel.numberOfLines = 0
        } else {
            cell.descriptionLabel.numberOfLines = 1
        }
        
        cell.selectionStyle = .none
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        dataModels[indexPath.row].isExpand = !dataModels[indexPath.row].isExpand
        
        UIView.setAnimationsEnabled(false)
        tableView.reloadRows(at: [indexPath], with: .none)
        UIView.setAnimationsEnabled(true)
    }
    
    
}
