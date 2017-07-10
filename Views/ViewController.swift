//
//  ViewController.swift
//  Views
//
//  Created by Sain-R Edwards Jr. on 7/9/17.
//  Copyright © 2017 Sain-R Edwards Jr. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var theBurbs = ["Cinco Ranch", "Sienna Plantation", "Rollingwood", "Greatwood", "Frisco", "Coppell", "Allen", "The Woodlands", "Brushy Creek"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Returns the number of cells as there are items in my array, 'theBurbs'
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return theBurbs.count
    }
    
    // Creates the cell and populates them with the items in the array, 'theBurbs'
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        if cell != nil {
            cell?.textLabel?.text = theBurbs[indexPath.row]
        }
        return cell!
    }
    
    /* Swipe to delete function. Allows user to swipe left and delete the 
     item that is at their "indexPath.row" (the place where their finger 
     actually touches in the tableview that has data...) */
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCellEditingStyle.delete {
            theBurbs.remove(at: indexPath.row)
            tableView.reloadData()
        }
    }
}

