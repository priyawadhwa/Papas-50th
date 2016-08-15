//
//  TabViewController.swift
//  Papa's-50th
//
//  Created by Varun Wadhwa on 8/15/16.
//  Copyright © 2016 Priya Wadhwa. All rights reserved.
//

import UIKit

class TabViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let firstViewController:UIViewController = PhotoViewController()
        
        let customTabBarItem:UITabBarItem = UITabBarItem(title: nil, image: UIImage(named: "Photos")?.imageWithRenderingMode(.AlwaysOriginal), tag: 1)
        
        firstViewController.tabBarItem = customTabBarItem
        
        let secondViewController:UIViewController = VideoViewController()
        
        let secondCustomTabBarItem:UITabBarItem = UITabBarItem(title: nil, image: UIImage(named: "Video")?.imageWithRenderingMode(.AlwaysOriginal), tag: 2)
        
        secondViewController.tabBarItem = secondCustomTabBarItem
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
