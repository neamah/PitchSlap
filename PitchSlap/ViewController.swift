//
//  ViewController.swift
//  PitchSlap
//
//  Created by Neamah Hussein on 8/3/15.
//  Copyright (c) 2015 Neamah Hussein. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var recordingNow: UILabel!
    @IBOutlet weak var stopButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    //IB Action means it's an Interfact builder, which means it's
    //linked to the storyboard or something similar
    @IBAction func recordAudio(sender: UIButton) {
        
        //TODO: Record the audio
        
        recordingNow.hidden = false
        stopButton.hidden = false
        println("UI Button hit");
    }
    
    @IBAction func stopRecording(sender: UIButton) {
        //TODO: Stop recording
        recordingNow.hidden = true
    }
}

