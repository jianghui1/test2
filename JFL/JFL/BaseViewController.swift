//
//  BaseViewController.swift
//  JFL
//
//  Created by yaxiongfang on 11/11/15.
//  Copyright © 2015 yxfang. All rights reserved.
//

import Foundation

import UIKit

class BaseViewController : UIViewController, HttpResponseProtocol {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    /**
     父类发起http 请求
     
     - parameter apiUrl: api url
     - parameter params: 参数
     */
    func sendHttpRequest(apiUrl : String, params : AnyObject) {
        CommonHttpRequest.getRequest(apiUrl, params: params, responseHandler: self)
    }
    
    /**
     实现HttpResponseProtocol 协议
     处理http 请求成功
     不处理 交给子类处理
     - parameter result: json 结果
     */
    func onHttpRequestSuccess(result: JSON) {
        
    }
    
    /**
     实现HttpResponseProtocol 协议
     处理http 请求失败
     不处理 交给子类处理
     - parameter result: json 结果
     */
    func onHttpRequestFailure(error: NSError) {
        print("http fail : \(error.code)")
    }
    
}