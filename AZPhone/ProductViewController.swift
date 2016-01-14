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
    
    var productName = "";
    override func viewDidLoad() {
        super.viewDidLoad()

        productNameLabel.text = productName
        productImageView.image = UIImage(named: "phone-fullscreen1")
    }

    @IBAction func AddToCartPressed(sender: AnyObject) {
        print("Taped")
    }
}
