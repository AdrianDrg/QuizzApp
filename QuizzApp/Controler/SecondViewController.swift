//
//  SecondViewController.swift
//  QuizzApp
//
//  Created by Draghici Adrian on 13/02/2018.
//  Copyright © 2018 Draghici Adrian. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var playButton: UIButton!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = "Welcome to my QuizzApp. \nHave fun and stay smart!"
        

    }

   
    @IBAction func pressPlayButton(_ sender: Any) {
        
        performSegue(withIdentifier: "secondScreen", sender: self)
        
    }
    

    

}
