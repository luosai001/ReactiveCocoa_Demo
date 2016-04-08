//
//  ViewController.swift
//  ReactiveCocoa_Demo
//
//  Created by luosai19910103@163.com on 16/4/8.
//  Copyright © 2016年 bingqingxueku. All rights reserved.
//

import UIKit
import Result
import ReactiveCocoa

class ViewController: UIViewController {

    
    @IBOutlet weak var username: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var loginBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
      self.password.enabled = false
      self.loginBtn.enabled = false
        
      let validateUsernameSignal =   username.rac_textSignal().map { (username) -> AnyObject! in
             let text = username as! NSString
            return  self.validateUsername(text)
        }
        validateUsernameSignal.subscribeNext { (enable) in
            let enable = enable as! Bool
            self.password.enabled = enable
        }
        
        let validatePasswordSignal = password.rac_textSignal().map { (password) -> AnyObject! in
            let text = password as! NSString
            return self.validatePassword(text)
        }
        validatePasswordSignal.subscribeNext { (enable) in
            let enable  = enable as! Bool
            self.loginBtn.enabled = enable
        }
        
        
       
    }
    
    func  validateUsername(username :NSString) -> Bool {
        return username.length > 6
    }
    func  validatePassword(password :NSString) -> Bool {
        return password.length > 6
    }

    @IBAction func login(sender: AnyObject) {
        
        print("login start ... ")
    }
    func testDemo() -> Void {
        
        //        let (signal, observer) = Signal<String, NoError>.pipe()
        //
        //        signal
        //            .map { string in string.uppercaseString }
        //            .observeNext { next in print(next) }
        //
        //        observer.sendNext("a")     // Prints A
        //        observer.sendNext("b")     // Prints B
        //        observer.sendNext("c")     // Prints C
        
        
        //        let (signal, observer) = Signal<Int, NoError>.pipe()
        //
        //        signal
        //            .filter { number in number % 2 == 0 }
        //            .observeNext { next in print(next) }
        //
        //        observer.sendNext(1)     // Not printed
        //        observer.sendNext(2)     // Prints 2
        //        observer.sendNext(3)     // Not printed
        //        observer.sendNext(4)     // prints 4
        
        //        let (signal, observer) = Signal<Int, NoError>.pipe()
        //
        //        signal
        //            .collect()
        //            .observeNext { next in print(next) }
        //
        //        observer.sendNext(1)     // nothing printed
        //        observer.sendNext(2)     // nothing printed
        //        observer.sendNext(3)     // nothing printed
        //        observer.sendCompleted()   // prints [1, 2, 3]
        
        
        //        let (numbersSignal, numbersObserver) = Signal<Int, NoError>.pipe()
        //        let (lettersSignal, lettersObserver) = Signal<String, NoError>.pipe()
        //
        //        let signal = combineLatest(numbersSignal, lettersSignal)
        //        signal.observeNext { next in print("Next: \(next)") }
        //        signal.observeCompleted { print("Completed") }
        //
        //        numbersObserver.sendNext(0)      // nothing printed
        //        numbersObserver.sendNext(1)      // nothing printed
        //        lettersObserver.sendNext("A")    // prints (1, A)
        //        numbersObserver.sendNext(2)      // prints (2, A)
        //        numbersObserver.sendCompleted()  // nothing printed
        //        lettersObserver.sendNext("B")    // prints (2, B)
        //        lettersObserver.sendNext("C")    // prints (2, C)
        //        lettersObserver.sendCompleted()  // prints "Completed"
        
        //
        //        let (numbersSignal, numbersObserver) = Signal<Int, NoError>.pipe()
        //        let (lettersSignal, lettersObserver) = Signal<String, NoError>.pipe()
        //
        //        let signal = zip(numbersSignal, lettersSignal)
        //        signal.observeNext { next in print("Next: \(next)") }
        //        signal.observeCompleted { print("Completed") }
        //
        //        numbersObserver.sendNext(0)      // nothing printed
        //        numbersObserver.sendNext(1)      // nothing printed
        //        lettersObserver.sendNext("A")    // prints (0, A)
        //        numbersObserver.sendNext(2)      // nothing printed
        //        numbersObserver.sendCompleted()  // nothing printed
        //        lettersObserver.sendNext("B")    // prints (1, B)
        //        lettersObserver.sendNext("C")    // prints (2, C) & "Completed"
        

    }


}

