//
//  ViewController.swift
//  TestTarget
//
//  Created by AbbyLai on 2020/9/15.
//  Copyright © 2020 AbbyLai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonPressed(_ sender: Any) {
        /**
        check iOS 管理项目-多Target
        1. https://www.jianshu.com/p/d9aaa807ccdf
        2. https://medium.com/@mikru168/利用-xcode-的-macros-和-custom-flags-來避免建置開發和正式環境時容易發生的錯誤-2ca320eb7e37
        */
        
        let storyboardName = "CStoryboard"
        
        /// viewControllerId = storyboard id https://medium.com/彼得潘的-swift-ios-app-開發教室/簡易說明xcode中的顯示下一個畫面方法-由程式觸發的方式-5d0e49e4ae9a
        var viewControllerId = "SecondViewController1"
        #if FIRST
        viewControllerId = "SecondViewController1"
        #else
        viewControllerId = "SecondViewController2"
        #endif
        
        
        let storyboard = UIStoryboard(name: storyboardName, bundle: nil)
        let secondViewController = storyboard.instantiateViewController(withIdentifier: viewControllerId) as! SecondViewController
        self.present(secondViewController, animated: true, completion: nil)
    }
}

