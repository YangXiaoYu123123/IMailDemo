//
//  DetailViewController.swift
//  IMailDemo
//
//  Created by YangXIAOYU on 14-6-24.
//  Copyright (c) 2014年 YangXIAOYU. All rights reserved.
//

import UIKit
import MessageUI

class DetailViewController: UIViewController,MFMailComposeViewControllerDelegate {

    init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        // Custom initialization
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet var contentView: UITextView

    @IBAction func back(sender: AnyObject) {
        self.navigationController.popViewControllerAnimated(true)
    }
    @IBAction func confirm(sender: AnyObject) {
        self.displayMailPicker()
    }
   
    
    func displayMailPicker(){
        var mailPick:MFMailComposeViewController = MFMailComposeViewController()
        mailPick.mailComposeDelegate = self
        mailPick.setSubject("我要加薪")
        mailPick.setMessageBody(contentView.text,isHTML:true)
        self.presentModalViewController(mailPick, animated: true)
    }
    
    func mailComposeController(controller: MFMailComposeViewController!, didFinishWithResult result: MFMailComposeResult, error: NSError!){
        
        controller.dismissModalViewControllerAnimated(true)
        //NSString *msg;
//        switch (result) {
//        case MFMailComposeResultCancelled:
//            msg = @"用户取消编辑邮件";
//            break;
//        case MFMailComposeResultSaved:
//            msg = @"用户成功保存邮件";
//            break;
//        case MFMailComposeResultSent:
//            msg = @"用户点击发送，将邮件放到队列中，还没发送";
//            break;
//        case MFMailComposeResultFailed:
//            msg = @"用户试图保存或者发送邮件失败";
//            break;
//        default:
//            msg = @"";
//            break;
//        }

    }
    /*
    // #pragma mark - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue?, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
