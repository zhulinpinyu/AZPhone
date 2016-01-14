//
//  ProductsTableViewController.swift
//  AZPhone
//
//  Created by Lixiang Mu on 1/14/16.
//  Copyright © 2016 Lixiang Mu. All rights reserved.
//

import UIKit

class ProductsTableViewController: UITableViewController {
    
    var productNames: [String]?
    
    override func viewDidLoad(){
        super.viewDidLoad()
        productNames = ["1907 Wall Set","1921 Dial Phone","1937 Desk Set", "1984 Motorola Portable"];
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let names = productNames{
            return names.count
        }
        return 0
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("productCell", forIndexPath: indexPath)
        if let names = productNames {
            cell.textLabel?.text = names[indexPath.row]
            cell.imageView?.image = UIImage(named: "image-cell1")
        }
        
        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showProduct" {
            let productVC = segue.destinationViewController as? ProductViewController
            guard let cell = sender as? UITableViewCell,
                  let indexPath = tableView.indexPathForCell(cell) else {
                return
            }
            productVC?.productName = productNames![indexPath.row]
        }
    }

    
}
