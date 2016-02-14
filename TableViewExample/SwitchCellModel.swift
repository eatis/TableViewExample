//
//  SwitchCellModel.swift
//  TableViewExample
//

import UIKit

class SwitchCellModel: NSObject {
    var switchLabelName: NSString
    
    //initialize
    init(switchLabelName: String) {
        self.switchLabelName = switchLabelName
    }
}