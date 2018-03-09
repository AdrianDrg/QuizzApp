//
//  CategoryViewController.swift
//  QuizzApp
//
//  Created by Draghici Adrian on 16/02/2018.
//  Copyright © 2018 Draghici Adrian. All rights reserved.
//

import UIKit

class CategoryViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
  


    
    var allCategory = ["Science", "Mathematics", "Biology", "Ancient History", "Statistics", "Programing", "HTML", "CSS"]
    let allColors = [UIColor(red:255/255.0,   green:107/255.0,   blue:107/255.0, alpha:1.0),
                     UIColor(red:84/255.0,    green:160/255.0,   blue:255/255.0, alpha:1.0),
                     UIColor(red:255/255.0,   green:190/255.0,   blue:118/255.0, alpha:1.0),
                     UIColor(red:0/255.0,     green:206/255.0,   blue:201/255.0, alpha:1.0),
                     UIColor(red:250/255.0,   green:130/255.0,   blue:49/255.0, alpha:1.0),
                     UIColor(red:15/255.0,    green:185/255.0,   blue:177/255.0, alpha:1.0),
                     UIColor(red:120/255.0,   green:224/255.0,   blue:143/255.0, alpha:1.0),
                     UIColor(red:254/255.0,   green:164/255.0,   blue:127/255.0, alpha:1.0)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
}
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return allCategory.count
        
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
       
        return 82
        
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        cell.textLabel?.text = allCategory[indexPath.row]
        cell.backgroundColor = allColors[indexPath.row]

        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
     
        
    }

    
}
