//
//  HttpReueqst.swift
//  JFL
//  Http 请求
//  Created by yaxiongfang on 11/12/15.
//  Copyright © 2015 yxfang. All rights reserved.
//

import Foundation

class CommonHttpRequest {
    
    /**
     封装get 请求， 调用oc 代码
     
     - parameter apiUrl:          api 接口
     - parameter params:          参数
     - parameter responseHandler: 请求结果回调
     */
    internal static func getRequest(apiUrl:String, params : AnyObject, responseHandler : HttpResponseProtocol) {
        
        HttpRequest.GET(getAbsoluteUrl(apiUrl), parameters: params, timeoutInterval: 5, requestType:HTTPRequestType, responseType: JSONResponseType, success: { (operation: AFHTTPRequestOperation!,
            responseObject: AnyObject!) -> Void in
                responseHandler.onHttpRequestSuccess(JSON(responseObject!))
            }, failure: { (operation: AFHTTPRequestOperation!,
                error: NSError!) -> Void in
                responseHandler.onHttpRequestFailure(error)
        })
    }
    
    /**
     封装post 请求， 调用oc 代码
     
     - parameter apiUrl:          api 接口
     - parameter params:          参数
     - parameter responseHandler: 请求结果回调
     */
    internal static func postRequest(apiUrl : String , params : AnyObject, responseHandler : HttpResponseProtocol) {
        
        HttpRequest.POST(getAbsoluteUrl(apiUrl), parameters: params, timeoutInterval: 5, requestType: AFNetworkingRequestType(rawValue : 0), responseType: AFNetworkingResponseType(rawValue: 1), success: { (operation: AFHTTPRequestOperation!,
            responseObject: AnyObject!) -> Void in
                responseHandler.onHttpRequestSuccess(JSON(responseObject!))
            }, failure: { (operation: AFHTTPRequestOperation!,
                error: NSError!) -> Void in
                responseHandler.onHttpRequestFailure(error)
        })
    }
    
   static func getAbsoluteUrl(apiUrl : String) -> String {
        return APIS.DEBUG_SERVER_ADDRESS + apiUrl
    }
}