//
//  HttpResponseProtocol.swift
//  JFL
//
//  Created by yaxiongfang on 11/12/15.
//  Copyright © 2015 yxfang. All rights reserved.
//

import Foundation

protocol HttpResponseProtocol {
    
    func onHttpRequestSuccess(result : JSON) -> Void
    func onHttpRequestFailure(error: NSError) -> Void
    
}