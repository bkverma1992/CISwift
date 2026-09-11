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
        // MARK: - Optional Value
        makeOptional()
//        MARK: - Clouser Value
        makeClouser()

    }
    
    func makeClouser() {
//       MARK: - Clouser is a block of code that can be store in variable and user later. there are few type like non-escaping, escaping, traling, autoclouser,
        
        // MARK: - Traling Clouser
        // in the function the last paramet if it is clouser tht is called traling clouser.
        makeTrailingClouser(name: "Hello Bhupi") {
            print("Hello team")
        }
        
        // MARK: - AutoClouser
        // @autoclosuer automaticaaly expression ko clouser meconvert krta hai jisme hme {} ye ni likhna pdta
           makeAutoClouser(10>15)
        
        // MARK: - Non-esaping clouser
        // Clouser jis function ko diya hai usi function me call ho jayega funtion end hone se phle. function k bahar bad me use nhi kiya ja skta
        nonEscapingClouser {
            print("Task DONE")
        }
        
        // MARK: - Esaping Clouser
        // Clouser use - it excute after the function end like async with @esacping
        escapingClouser {
            print("Escaping Clouser DONE")
        }
    }
    // Traling clouser
    func makeTrailingClouser(name: String, lastClsr: () -> Void) {
        print(name)
        lastClsr()
        
    }
    
    // AutoClouser
    func makeAutoClouser(_ conditon: @autoclosure () -> Bool) {
        print( conditon())
    }
    
    // MARK: - Non escaping
    func nonEscapingClouser(completion: () -> Void) {
        print("Started")
        print("Task Ongoing")
        completion()
        print("Task Completed")
        print("Task Finished")
    }
    
    // MARK: - Escaping
    func escapingClouser(completion: @escaping () -> Void) {
       print("Started")
        DispatchQueue.main.async {
            completion()
        }
        print("completed")
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

