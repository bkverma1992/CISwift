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
        let result = addData(2, 7)
        print(result)
        print(addData1(2, 7))
        makeOptional()

    }

    func makeFunction() {
        print("Hello Bhupi 1222")
    }
    
    func addData(_ val1: Int, _ val2: Int) -> Int {
       return val1 + val2
    }
    
    func addData1(_ val1: Int, _ val2: Int) -> Bool {
       return val1 > val2
    }
    
    func makeOptional() {
        // Optional: value ho bhi sakti hai aur nil bhi
        var userName: String?
        // Nil-coalescing
        print(userName ?? "Bhupi")
        
        // Force unwrap
       // print(userName!)

        // Optional binding
        if let name = userName {
            print(name)
        }

      //  Optional Chaining
        var user = User()
         user = User(name: "Bhupi")
        print(user.name?.count)
        if let count = user.name?.count {
            print(count)
        }
        /*
         String?       → Optional
         if let        → Safely unwrap
         guard let     → Safely unwrap + exit if nil
         ??            → Give default value
         ?.            → Safely access property/method
         !             → Force unwrap → ⚠️ can crash
         */
    }

}

class User {
    var name: String?
    init(name: String? = nil) {
        self.name = name
    }
}

