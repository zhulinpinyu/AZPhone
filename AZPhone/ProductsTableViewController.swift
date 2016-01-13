//
//  ProductsTableViewController.swift
//  AZPhone
//
//  Created by Lixiang Mu on 1/14/16.
//  Copyright © 2016 Lixiang Mu. All rights reserved.
//

import UIKit

class ProductsTableViewController: UITableViewController {

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("productCell", forIndexPath: indexPath)
        return cell
    }

    
}
