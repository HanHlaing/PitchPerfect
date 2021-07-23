//
//  RecordSoundsViewController.swift
//  PitchPerfect
//
//  Created by Han Hlaing Moe on 23/07/2021.
//

import UIKit

class RecordSoundsViewController: UIViewController {

    @IBOutlet weak var btnRecord: UIButton!
    
    @IBOutlet weak var lblRecording: UILabel!
    
    @IBOutlet weak var btnStopRecording: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setRecordingButtonsState(false)
    }


    @IBAction func recordAudio(_ sender: Any) {
        setRecordingButtonsState(true)
    }
    
    
    @IBAction func stopRecording(_ sender: Any) {
        setRecordingButtonsState(false)
    }
    
    func setRecordingButtonsState(_ recording: Bool) {
        lblRecording.text = recording ? "Recording in Progress" : "Tap to record"
        btnStopRecording.isEnabled = recording
        btnRecord.isEnabled = !recording
    }
}

