//
//  PlaySoundsViewController.swift
//  PitchSlap
//
//  Created by Neamah Hussein on 8/5/15.
//  Copyright (c) 2015 Neamah Hussein. All rights reserved.
//

import UIKit
import AVFoundation

class PlaySoundsViewController: UIViewController {
    
    var audioPlayer: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if var filepath = NSBundle.mainBundle().pathForResource("movie_quote", ofType: "mp3") {
            let fileURL = NSURL(fileURLWithPath: filepath);
            
            audioPlayer = AVAudioPlayer(contentsOfURL: fileURL, error: nil )
            audioPlayer.enableRate = true
            
        } else {
            println("filepath is empty")
        }

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
    
    @IBAction func snailSpeed(sender: UIButton) {
        audioPlayer.stop()
        audioPlayer.rate = 0.5;
        audioPlayer.play();
    }
    
    @IBAction func rabbitSpeed(sender: UIButton) {
        audioPlayer.stop()
        audioPlayer.rate = 2.0
        audioPlayer.play()
    }
    
    @IBAction func stopPlaying(sender: UIButton) {
        println("Inside StopPlaying function")
        audioPlayer.stop()
    }
    
}
