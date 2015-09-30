//
//  ViewController.swift
//  ClassRoster
//
//  Created by Jackson on 9/17/15.
//  Copyright © 2015 Jackson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
  var myName = "Jackson"
  var numbers = [Int]()
  
  @IBOutlet weak var mySwitch: UISwitch!
  
  override func viewDidLoad() {
      super.viewDidLoad()
      view.backgroundColor = UIColor(red: 48/255, green: 48/255, blue: 48/255, alpha: 1)
      print(view.frame.size)
      // Do any additional setup after loading the view, typically from a nib.
  }
    
  @IBAction func changeColor(sender: AnyObject) {
    view.backgroundColor = UIColor.orangeColor()
    mySwitch.on = !mySwitch.on
  }
  
  override func viewWillAppear(animated: Bool) {
      super.viewWillAppear(animated)
      print("view will appear")
  }
    
  override func viewDidAppear(animated: Bool) {
      super.viewDidAppear(animated)
      print("view did appear")
      view.backgroundColor = UIColor.greenColor()
  }

  override func didReceiveMemoryWarning() {
      super.didReceiveMemoryWarning()
      // Dispose of any resources that can be recreated.
  }

}

