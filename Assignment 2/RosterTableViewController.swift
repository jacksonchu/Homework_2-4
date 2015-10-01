//
//  RosterTableViewController.swift
//  Assignment 2
//
//  Created by Jackson on 9/24/15.
//  Copyright © 2015 Jackson. All rights reserved.
//

import UIKit

class RosterTableViewController: UIViewController, UITableViewDataSource {
  
  
  let firstNames = ["Jane","Joe","John","Jim","Janelle"]
  let lastNames = ["Doe","Brown","Smith","Gore","Chomski"]
  
  var people = [Person]()
  
  @IBOutlet weak var tableView: UITableView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    tableView.dataSource = self
    
    for counter in 0 ... (firstNames.count - 1) {
      let personName = Person(fName: "\(firstNames[counter])", lName: "\(lastNames[counter])")
      people.append(personName)
    }
  }
  
  
  // Segue and passing full name to detail page
  
  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    if segue.identifier == "ShowPersonDetail" {
      let destinationViewController = segue.destinationViewController as! PersonDetailViewController
      
      let selectedIndexPath = tableView.indexPathForSelectedRow
      let selectedRow = selectedIndexPath!.row
      let selectedName = firstNames[selectedRow] + " " + lastNames[selectedRow]
      
      destinationViewController.selectedName = selectedName
    }
  }
  
  
  // Display cells with full names
  
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return people.count
  }
  
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    
    //part 1 - dequeue the cell
    let cell = tableView.dequeueReusableCellWithIdentifier("PersonCell", forIndexPath: indexPath)
    
    //part 2 - configure the cell
    let personCell = people[indexPath.row]
    cell.textLabel?.text = "\(personCell.firstName) \(personCell.lastName)"
    cell.backgroundColor = UIColor.whiteColor()
    
    //part 3 - return the cell
    return cell
  }
  
}
