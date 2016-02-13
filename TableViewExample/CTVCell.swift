//
//  CTVCell.swift
//  TableViewExample
//
//  Created by 谷田　裕樹 on 2016/02/13.
//  Copyright © 2016年 谷田　裕樹. All rights reserved.
//

import UIKit

class CTVCell: UITableViewCell {

    @IBOutlet weak var switchLabel: UILabel!
    @IBOutlet weak var switchLabelWidth: NSLayoutConstraint!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
 
    //セルの設定
    func configureCell(texts: SwitchCellModel, atIndexpath: NSIndexPath) {
        switchLabel.text = texts.switchLabelName as String
        
        let fontSize: CGFloat = 30.0
        switchLabel.font = UIFont.systemFontOfSize(fontSize)
        switchLabel.numberOfLines = 0
        switchLabel.lineBreakMode = .ByWordWrapping
        let frame = CGSizeMake(250, CGFloat.max)
        let rect = switchLabel.sizeThatFits(frame)
        switchLabelWidth.constant = rect.width
    }
}
