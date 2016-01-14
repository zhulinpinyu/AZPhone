//
//  ProductsTableViewController.swift
//  AZPhone
//
//  Created by Lixiang Mu on 1/14/16.
//  Copyright © 2016 Lixiang Mu. All rights reserved.
//

import UIKit

class ProductsTableViewController: UITableViewController {
    
    var products: [Product]?
    
    override func viewDidLoad(){
        super.viewDidLoad()
        let p1 = Product()
        p1.name = "1907 Wall Set"
        p1.productImage = "phone-fullscreen1"
        p1.cellImage = "image-cell1"
        let p2 = Product()
        p2.name = "1921 Dial Phone"
        p2.productImage = "phone-fullscreen2"
        p2.cellImage = "image-cell2"
        let p3 = Product()
        p3.name = "1937 Desk Set"
        p3.productImage = "phone-fullscreen3"
        p3.cellImage = "image-cell3"
        let p4 = Product()
        p4.name = "1984 Motorola Portable"
        p4.productImage = "phone-fullscreen4"
        p4.cellImage = "image-cell4"
        products = [p1,p2,p3,p4]
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let products = products{
            return products.count
        }
        return 0
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("productCell", forIndexPath: indexPath)
        if let products = products{
            cell.textLabel?.text = products[indexPath.row].name!
            cell.imageView?.image = UIImage(named: products[indexPath.row].cellImage!)
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
            productVC?.product = products![indexPath.row]
        }
    }

    
}
