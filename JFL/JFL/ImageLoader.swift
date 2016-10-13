//
//  ImageLoader.swift
//  JFL
//  全局图片加载器
//  Created by yaxiongfang on 11/12/15.
//  Copyright © 2015 yxfang. All rights reserved.
//

import Foundation

class ImageLoader {
    
    /**
     网络图片加载
     
     - parameter imageView:  图片控件
     - parameter imgUrl:     图片地址
     - parameter defaultImg: 本地默认图片
     */
    internal static func loadImage(imageView :UIImageView, imgUrl : String, defaultImg : String) {
        imageView.sd_setImageWithURL(NSURL(string: imgUrl
            ), placeholderImage: UIImage(named: defaultImg), options: SDWebImageOptions.ContinueInBackground)
    }
}