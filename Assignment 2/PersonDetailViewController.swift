//
//  PersonDetailViewController.swift
//  Assignment 2
//
//  Created by Jackson on 9/29/15.
//  Copyright © 2015 Jackson. All rights reserved.
//

import UIKit

class PersonDetailViewController: UIViewController {

  var selectedName = "None"
  
  @IBOutlet weak var nameLabel: UILabel!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = selectedName
      
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
