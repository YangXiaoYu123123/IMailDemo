//
//  ViewController.swift
//  IMailDemo
//
//  Created by YangXIAOYU on 14-6-19.
//  Copyright (c) 2014年 YangXIAOYU. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
                            
//    @IBAction func pushToMessage(sender : AnyObject) {
//        var mess:SendMailViewController = SendMailViewController(nibName: "SendMailViewController",bundle: nil)
//        self.navigationController.pushViewController(mess,animated:true)
//        
//    }
//    @IBAction func pushToAddressBook(sender : AnyObject) {
//        var test:AddressListViewController = AddressListViewController(nibName: "AddressListViewController",bundle: nil);
//        self.navigationController.pushViewController(test,animated:true)
//    }
    
    @IBOutlet var contentView: UITableView
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "选择模板"
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int{
        return 10;
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell!{
        //var cell:UITableViewCell
        
        var cell:UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: nil)
        
        cell.textLabel.text = "我要加薪"
        return cell
    }
    
    func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!){
        var root:RootViewController = RootViewController(nibName: "RootViewController",bundle: nil)
        self.navigationController.pushViewController(root,animated:true)
    }
}

