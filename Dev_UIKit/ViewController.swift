//
//  ViewController.swift
//  Dev_UIKit
//
//  Created by APPLE on 22/08/26.
//

import UIKit

class ViewController: UIViewController {
    var age: Int = 20
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        makeFunction()
        addData(2, 7)
    }

    func makeFunction() {
        print("Hello Bhupi 1222")
    }
    
    func addData(_ val1: Int, _ val2: Int) -> Int {
       return val1 + val2
    }

}

