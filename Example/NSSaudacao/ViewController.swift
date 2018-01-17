//
//  ViewController.swift
//  NSSaudacao
//
//  Created by IgorClemente on 01/16/2018.
//  Copyright (c) 2018 IgorClemente. All rights reserved.
//

import UIKit
import NSSaudacao

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       print(NSSaudacao.saudacao())
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

