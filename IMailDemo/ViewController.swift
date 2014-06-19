//
//  ViewController.swift
//  IMailDemo
//
//  Created by YangXIAOYU on 14-6-19.
//  Copyright (c) 2014年 YangXIAOYU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    @IBAction func pushToMessage(sender : AnyObject) {
        var mess:SendMailViewController = SendMailViewController(nibName: "SendMailViewController",bundle: nil)
        self.navigationController.pushViewController(mess,animated:true)
        
    }
    @IBAction func pushToAddressBook(sender : AnyObject) {
        var test:AddressListViewController = AddressListViewController(nibName: "AddressListViewController",bundle: nil);
        self.navigationController.pushViewController(test,animated:true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

