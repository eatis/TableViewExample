//
//  CustomTableModel.swift
//  TableViewExample
//


import UIKit

class CustomTableModel: NSObject {
    var titleName: NSString
    var categoryName: NSString
    
    //initialize
    init(titleName: String, categoryName: String) {
        self.titleName = titleName
        self.categoryName = categoryName
    }
}