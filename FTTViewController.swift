//
//  FoodTableTableViewController.swift
//  Trenu
//
//  Created by Brandon Nguyen on 2/16/15.
//  Copyright (c) 2015 Trenu. All rights reserved.
//

import UIKit

class FoodTableTableViewController: UITableViewController {
    var foods = [Food]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Sample Data for candyArray
        self.foods = [Food(category:"Poultry", name:"fried chicken"),
            Food(category:"Poultry", name:"grilled chicken"),
            Food(category:"Beef", name:"steak"),
            Food(category:"Beef", name:"steak tacos"),
            Food(category:"Beef", name:"beef enchiladas"),
            Food(category:"Seafood", name:"crab"),
            Food(category:"Seafood", name:"oysters"),
            Food(category:"Seafood", name:"trout"),
            Food(category:"Seafood", name:"haddock")]
        
        // Reload the table
        self.tableView.reloadData()    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 0
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.foods.count
        
       override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
            let cell = self.tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell
            
            // Get the corresponding candy from our candies array
            let food = self.foods[indexPath.row]
            
            // Configure the cell
            cell.textLabel!.text = food.name
            cell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
            
            return cell
        }
        }
    }


    /*
        }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    

