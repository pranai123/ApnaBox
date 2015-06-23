//
//  ChatsTableViewController.swift
//  ApnaBox
//
//  Created by Pranai Basani on 22/06/15.
//  Copyright (c) 2015 Pranai Basani. All rights reserved.
//

import UIKit

class ChatsTableViewController: UITableViewController {
    var testArray:NSMutableArray = NSMutableArray()
    @IBOutlet weak var menuButton: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        if self.revealViewController() != nil {
            menuButton.target = self.revealViewController()
            menuButton.action = "revealToggle:"
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
        self.revealViewController().rearViewRevealWidth = 250
        
       self.tableView.reloadData()
        testArray = ["sdgfjhdgjhgdjfgjskdgjdgfgfj","abcd","dhfgkgfsdfdsf"]

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return testArray.count
    }


    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! ChatsTableViewCell
        let background:UIImage = UIImage(named: "bubble_blue.9")!
        let cellBackgroundView:UIImageView = UIImageView()
        cellBackgroundView.image = background
        cell.backgroundView = cellBackgroundView
        cell.label.text = testArray[indexPath.row] as? String
     

        return cell
    }
    


}
