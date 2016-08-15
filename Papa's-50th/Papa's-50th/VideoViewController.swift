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
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func pushButton1(sender: UIButton) {
        self.playVideo()
    }

    
    func playVideo() {
        let path = NSBundle.mainBundle().pathForResource("Bua", ofType:"mov")
        print(path)
        let player = AVPlayer(URL: NSURL(fileURLWithPath: path!))
        let playerController = AVPlayerViewController()
        playerController.player = player
        self.presentViewController(playerController, animated: true) {
            player.play()
        }
    }
}
