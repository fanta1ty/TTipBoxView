//
//  ViewController.swift
//  TTipBoxView
//
//  Created by thinhnguyen12389 on 08/03/2022.
//  Copyright (c) 2022 thinhnguyen12389. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    private lazy var contentView = ContentView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func loadView() {
        view = contentView
    }
}

