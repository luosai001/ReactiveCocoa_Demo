//: Playground - noun: a place where people can play

import UIKit
import ReactiveCocoa

    var str = "Hello, playground"

    let user = UITextView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))

    user.rac_textSignal().map { (username) -> AnyObject! in
        username as! Bool
}

