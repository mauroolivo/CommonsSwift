//
//  TableViewController.swift
//  CommonsSwift
//
//  Created by Mauro Olivo on 27/06/16.
//  Copyright © 2016 Mauro Olivo. All rights reserved.
//

import UIKit

class TableViewController: UIViewController {

    @IBOutlet weak var tw: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.tw.registerNib(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("TableViewCell") as! TableViewCell

        cell.customLabel.text = "Custom table label, \(indexPath.row)"
        return cell
    }

    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat
    {
        return 60.0
    }
}

extension TableViewController: UITableViewDelegate, UITableViewDataSource { }