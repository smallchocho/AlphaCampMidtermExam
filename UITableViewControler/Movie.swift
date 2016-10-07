//
//  Restaurant.swift
//  UITableViewControler
//
//  Created by Justin Huang on 2016/9/29.
//  Copyright © 2016年 Justin Huang. All rights reserved.
//
import Foundation

class Restaurant{
    var restaurantName = ""
    var restaurantType = ""
    var restaurantImage = ""
    init(name:String,type:String,image:String){
        self.restaurantName = name
        self.restaurantType = type
        self.restaurantImage = image

    }
}
var restaurant = [
    Restaurant(name: "我的少女時代", type: "上映日期：2015/7/27", image: "我的少女時代.jpg"),
    Restaurant(name: "美國隊長3英雄內戰", type: "上映日期：2015/9/27", image: "美國隊長3英雄內戰.jpg")
]
