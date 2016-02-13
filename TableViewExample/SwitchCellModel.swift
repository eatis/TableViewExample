//
//  SwitchCellModel.swift
//  TableViewExample
//
//  Created by 谷田　裕樹 on 2016/02/13.
//  Copyright © 2016年 谷田　裕樹. All rights reserved.
//

import UIKit

class SwitchCellModel: NSObject {
    var switchLabelName: NSString
    
    //initialize
    init(switchLabelName: String) {
        self.switchLabelName = switchLabelName
    }
}