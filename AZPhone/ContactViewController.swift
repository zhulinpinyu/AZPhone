//
//  ContactViewController.swift
//  AZPhone
//
//  Created by Lixiang Mu on 1/12/16.
//  Copyright © 2016 Lixiang Mu. All rights reserved.
//

import UIKit

class ContactViewController: UIViewController {

    @IBOutlet var scrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(scrollView)
        // Do any additional setup after loading the view.
    }
    
    override func viewWillLayoutSubviews() {
        scrollView.contentSize = CGSizeMake(414, 860)
    }
    

}
