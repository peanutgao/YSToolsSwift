//
//  ViewController.swift
//  YSToolsSwift
//
//  Created by peanutgao on 12/07/2020.
//  Copyright (c) 2020 peanutgao. All rights reserved.
//

import UIKit
import YSToolsSwift


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let imgV = UIImageView()
            .ys_inView(view)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

