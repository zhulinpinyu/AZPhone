//
//  ProductViewController.swift
//  AZPhone
//
//  Created by Lixiang Mu on 1/11/16.
//  Copyright © 2016 Lixiang Mu. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController {

    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var productImageView: UIImageView!
    
    var product: Product?
    override func viewDidLoad() {
        super.viewDidLoad()

        productNameLabel.text = product!.name!
        productImageView.image = UIImage(named: product!.productImage!)
    }

    @IBAction func AddToCartPressed(sender: AnyObject) {
        print("Taped")
    }
}
