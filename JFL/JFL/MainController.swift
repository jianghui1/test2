//
//  MainTabViewController.swift
//  JFL
//
//  Created by yaxiongfang on 11/11/15.
//  Copyright © 2015 yxfang. All rights reserved.
//

import Foundation

import UIKit

class MainController : UITabBarController {
    
    // 保存tab 子viewcontroller
    var tabControllers : NSMutableArray!
    
    override func viewDidLoad() {
        
        initTab()
    }
    
    
    /**
     初始化tab
     */
    func initTab() {
        tabControllers = NSMutableArray();
        
        setUpOneChildViewController(IndexViewController(), title: "首页", imgNormal: "guide_home", imgSelected: "guide_home_pre")
        
        setUpOneChildViewController(MoneyTaskViewController(), title: "赚钱任务", imgNormal: "guide_zq", imgSelected: "guide_zq_pre")
        
        setUpOneChildViewController(MineViewController(), title: "我的", imgNormal: "guide_account", imgSelected: "guide_account_pre")
        
        self.viewControllers = tabControllers.copy() as? [UIViewController]
        
        // 设置tabbar 背景颜色
        let backView = UIView.init(frame: self.tabBar.bounds)
        backView.backgroundColor = UIColor.whiteColor();
        self.tabBar.insertSubview(backView, atIndex: 0)
        self.tabBar.opaque = true
        
    }
    
    /**
     统一设置tab item
     
     - parameter controller:  controller description
     - parameter title:       title description
     - parameter imgNormal:   <#imgNormal description#>
     - parameter imgSelected: <#imgSelected description#>
     */
    func setUpOneChildViewController(controller : UIViewController, title : String, imgNormal : String, imgSelected : String) {
        
        let nav = UINavigationController(rootViewController: controller)
        
        let imgNormal = UIImage(named: imgNormal)?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        let imgSelected = UIImage(named: imgSelected)?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        
        nav.tabBarItem = UITabBarItem(title: title, image:imgNormal ,selectedImage: imgSelected)
        
        nav.tabBarItem.setTitleTextAttributes([NSForegroundColorAttributeName:Colors.TEXT_BLACk, NSFontAttributeName:UIFont.systemFontOfSize(14)], forState: UIControlState.Normal)
        
        nav.tabBarItem.setTitleTextAttributes([NSForegroundColorAttributeName:Colors.TEXT_RED, NSFontAttributeName:UIFont.systemFontOfSize(14)], forState: UIControlState.Selected)
        
        tabControllers.addObject(nav)
    }
    
}