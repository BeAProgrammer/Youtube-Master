//
//  ViewController.swift
//  Youtube Demo
//
//  Created by Mac on 03/12/18.
//  Copyright © 2018 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var youtubeView: YouTubePlayerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        loadViewYoutube()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func loadViewYoutube()
    {
        youtubeView.playerVars = ["playsinline": "1" as AnyObject,
            "controls": "1" as AnyObject,
            "showinfo": "0" as AnyObject]
         youtubeView.loadPlaylistID("RDMMzZ2i_sb4xOg")
    }
    @IBAction func playVdo(_ sender: UIButton)
    {
        
      if  youtubeView.playerState.rawValue == "-1"
      {
        youtubeView.play()
        sender.setImage(#imageLiteral(resourceName: "pause"), for: .normal)
      }
        else if youtubeView.playerState.rawValue == "2"
      {
        youtubeView.pause()
        sender.setImage(#imageLiteral(resourceName: "play"), for: .normal)
      }
        else if youtubeView.playerState.rawValue == "1"
      {
        youtubeView.play()
        sender.setImage(#imageLiteral(resourceName: "pause"), for: .normal)
        }
        
        
        
    }
    
    @IBAction func nextVdo(_ sender: Any)
    {
      youtubeView.nextVideo()
    }
    
    @IBAction func preVdo(_ sender: Any)
    {
      youtubeView.previousVideo()
    }
    
    
}

