//
//  CustomTableViewCell.swift
//  TableViewExample
//


import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLable: UILabel!
    @IBOutlet weak var categoryName: UILabel!
    //titleLabelの幅
    @IBOutlet weak var titleLabelWidth: NSLayoutConstraint!
    
    //Nib
    override func awakeFromNib() {
        super.awakeFromNib()
        titleLable.backgroundColor = UIColor(red: 0.76, green: 0.76, blue: 0.76, alpha: 0.8)
        categoryName.backgroundColor = UIColor(red: 0.69, green: 0.65, blue: 1.00, alpha: 0.8)
    }
    
    //セルの設定
    func configureCell(texts: CustomTableModel, atIndexpath: NSIndexPath) {
        titleLable.text = texts.titleName as String
        categoryName.text = texts.categoryName as String
        
        let fontSize: CGFloat = 30.0
        titleLable.font = UIFont.systemFontOfSize(fontSize)
        titleLable.numberOfLines = 0
        titleLable.lineBreakMode = .ByWordWrapping
        let frame = CGSizeMake(250, CGFloat.max)
        let rect = titleLable.sizeThatFits(frame)
        titleLabelWidth.constant = rect.width
    }
}
