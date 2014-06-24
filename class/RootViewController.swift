//
//  RootViewController.swift
//  IMailDemo
//
//  Created by YangXIAOYU on 14-6-24.
//  Copyright (c) 2014年 YangXIAOYU. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {

    init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        // Custom initialization
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        firstImageView.userInteractionEnabled = true
        secondImageView.userInteractionEnabled = true
        thirdImageView.userInteractionEnabled = true
        fourthImageVIew.userInteractionEnabled = true
        
        var tap1:UITapGestureRecognizer = UITapGestureRecognizer(target:self,action:"pushToDetailView:")
        var tap2:UITapGestureRecognizer = UITapGestureRecognizer(target:self,action:"pushToDetailView:")
        var tap3:UITapGestureRecognizer = UITapGestureRecognizer(target:self,action:"pushToDetailView:")
        var tap4:UITapGestureRecognizer = UITapGestureRecognizer(target:self,action:"pushToDetailView:")
        
        firstImageView.addGestureRecognizer(tap1)
        secondImageView.addGestureRecognizer(tap2)
        thirdImageView.addGestureRecognizer(tap3)
        fourthImageVIew.addGestureRecognizer(tap4)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet var firstImageView: UIImageView
    @IBOutlet var secondImageView: UIImageView
    @IBOutlet var thirdImageView: UIImageView
    @IBOutlet var fourthImageVIew: UIImageView

    
    func pushToDetailView(sender: AnyObject?){
        var detail:DetailViewController = DetailViewController(nibName: "DetailViewController",bundle: nil)
        self.navigationController.pushViewController(detail,animated:true)
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
