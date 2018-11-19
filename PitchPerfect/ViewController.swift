//
//  ViewController.swift
//  PitchPerfect
//
//  Created by Matthew Bowler on 11/18/18.
//  Copyright © 2018 Matthew Bowler. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var recordingLabel: UILabel!
    @IBOutlet weak var recordButton: UIButton!
    @IBOutlet weak var stopRecordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stopRecordButton.isEnabled = false
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear called");
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
    }

    @IBAction func recordAudio(_ sender: Any) {
        recordingLabel.text = "Recording in Progress"
        stopRecordButton.isEnabled = true
        recordButton.isEnabled = false
    }
    
    @IBAction func stopRecording(_ sender: Any) {
        recordingLabel.text = "Tap to Record"
        stopRecordButton.isEnabled = false
        recordButton.isEnabled = true
    }
}
