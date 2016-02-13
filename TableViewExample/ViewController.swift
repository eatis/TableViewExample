//
//  ViewController.swift
//  TableViewExample
//


import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    @IBOutlet var tableView: UITableView!
    
    var productList = [
        //Model
        CustomTableModel(titleName:"Apple", categoryName:"fruit"),
        CustomTableModel(titleName:"Peach", categoryName:"fruit"),
        CustomTableModel(titleName:"Pineapple", categoryName:"fruit"),
        CustomTableModel(titleName:"BaseBall", categoryName:"sports"),
        CustomTableModel(titleName:"SnowBoard", categoryName:"sports"),
        CustomTableModel(titleName:"iMac", categoryName:"device"),
        CustomTableModel(titleName:"iPhone", categoryName:"device"),
        CustomTableModel(titleName:"iWatch", categoryName:"device"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.delegate = self
        tableView.dataSource = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productList.count
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //cell deque
        let cell: CustomTableViewCell = self.tableView.dequeueReusableCellWithIdentifier("customCell") as! CustomTableViewCell
        cell.configureCell(productList[indexPath.row], atIndexpath: indexPath)
        
        return cell
    }

}

