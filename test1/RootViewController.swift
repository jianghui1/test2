//
//  RootViewController.swift
//  test1
//
//  Created by ys on 15/11/13.
//  Copyright (c) 2015年 ys. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init() {
        var nibNameOrNil = String?("RootViewController")
//        if NSBundle.mainBundle().pathForResource(nibNameOrNil, ofType: "xib") == nil
//        {
//            nibNameOrNil = nil
//        }
        self.init(nibName: nibNameOrNil, bundle: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
    }

}
