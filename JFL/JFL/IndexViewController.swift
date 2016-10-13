//
//  IndexViewController.swift
//  JFL
//
//  Created by yaxiongfang on 11/11/15.
//  Copyright © 2015 yxfang. All rights reserved.
//

import Foundation

class IndexViewController : BaseViewController {
    
    @IBOutlet weak var ivPic: UIImageView!
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    convenience init() {
        var nibNameOrNil = String?("IndexViewController")
        
        //考虑到xib文件可能不存在或被删，故加入判断
        if NSBundle.mainBundle().pathForResource(nibNameOrNil, ofType: "xib") == nil {
            nibNameOrNil = nil
        }
        self.init(nibName: nibNameOrNil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        onInit();
    }
    
    func onInit() {
        ImageLoader.loadImage(ivPic, imgUrl: "http://pic14.nipic.com/20110522/7411759_164157418126_2.jpg", defaultImg: "")
        
        getIndexData()
    }
    
    func getIndexData() {
       let params = ["id" : 10]
       sendHttpRequest(APIS.SHOP_INDEX_GOODLIST, params: params)
    }
    
    override func onHttpRequestSuccess(result: JSON) {
        
        let list: Array<JSON> = result["Data"].arrayValue
        for l in list {
          print("\(l)")
        }
       print("\(list)")
    }
    
    override func onHttpRequestFailure(error: NSError) {
        
    }
}