//
//  VideoViewController.swift
//  Papa's-50th
//
//  Created by Varun Wadhwa on 8/15/16.
//  Copyright © 2016 Priya Wadhwa. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class VideoViewController: UIViewController {

    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    @IBOutlet weak var button7: UIButton!
    @IBOutlet weak var button8: UIButton!
    
    let videoNames = [1:"Bua"]
    let extensions = [1:"mov"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setBorders()
    }
    
    @IBAction func pushButton1(sender: UIButton) {
        self.playVideo(1)
    }

    
    func playVideo(id:Int) {
        let path = NSBundle.mainBundle().pathForResource(videoNames[id], ofType: extensions[id])
        print(path)
        let player = AVPlayer(URL: NSURL(fileURLWithPath: path!))
        let playerController = AVPlayerViewController()
        playerController.player = player
        self.presentViewController(playerController, animated: true) {
            player.play()
        }
    }
    
    
    func setBorders(){
        
        button1.layer.borderColor = UIColor.whiteColor().CGColor
        button1.layer.borderWidth = 3.0
        
        button2.layer.borderColor = UIColor.whiteColor().CGColor
        button2.layer.borderWidth = 3.0
        
        button3.layer.borderColor = UIColor.whiteColor().CGColor
        button3.layer.borderWidth = 3.0
        
        button4.layer.borderColor = UIColor.whiteColor().CGColor
        button4.layer.borderWidth = 3.0
        
        button5.layer.borderColor = UIColor.whiteColor().CGColor
        button5.layer.borderWidth = 3.0
        
        button6.layer.borderColor = UIColor.whiteColor().CGColor
        button6.layer.borderWidth = 3.0
        
        button7.layer.borderColor = UIColor.whiteColor().CGColor
        button7.layer.borderWidth = 3.0
        
        button8.layer.borderColor = UIColor.whiteColor().CGColor
        button8.layer.borderWidth = 3.0
    }
}
