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
       
        
        //Valuetype , Refrence Type
        valueTypeRefranceType()
        /*
        //Clouser
        makeClouser()
        //Optional Value
        makeOptional()
       
        let result = addData(2, 7)
        print(addData1(2, 7))
        makeFunction()
        */
    }
    // MARK: - Valuetype , Refrence Type
    func valueTypeRefranceType() {
        // For Referance Type
        // Class - Reference type mein same object ka reference share hota hai, isliye ek reference se object change karne par doosre reference se bhi changed value dikhti hai.
        
      //  Class mein jab hum ek object ko doosre object mein assign karte hain, to dono same object ko refer karte hain. Isliye ek ko change karne par doosre mein bhi change dikhta hai.
        
        let user = User(name: "Bhupi")
        let user2 = user
        user2.name = "BK"
        print(user.name ?? "")
        print(user2.name ?? "")
        
        // For value Type
        // Struct - Value type mein value ki copy create hoti hai, isliye ek variable ko change karne se doosra variable change nahi hota.
        //Struct mein jab hum ek variable ko doosre variable mein assign karte hain, to uski copy ban jaati hai. Ek ko change karne se doosra change nahi hota.

        var org = Organisation(name: "XYZ")
        var org2 = org
        org2.name = "ABC"
        print(org.name ?? "")
        print(org2.name ?? "")
        
        
    }

    //    MARK: - Clouser
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
    //    MARK: - Optional
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
        var user = User(name: "Bhupi")
        print(user.name?.count ?? "")
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
    init(name: String) {
        self.name = name
    }
}


struct Organisation {
    var name: String?
    init(name: String) {
        self.name = name
    }
}


