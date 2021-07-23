//
//  PlaySoundsViewController.swift
//  PitchPerfect
//
//  Created by Han Hlaing Moe on 23/07/2021.
//

import UIKit
import AVFoundation

class PlaySoundsViewController: UIViewController {

    // MARK: Outlets
    
    @IBOutlet weak var btnSnail: UIButton!
    @IBOutlet weak var btnRabbit: UIButton!
    @IBOutlet weak var btnChipmunk: UIButton!
    @IBOutlet weak var btnVader: UIButton!
    @IBOutlet weak var btnEcho: UIButton!
    @IBOutlet weak var btnReverb: UIButton!
    @IBOutlet weak var btnStop: UIButton!
    
    var recordedAudioURL: URL!
    var audioFile: AVAudioFile!
    var audioEngine: AVAudioEngine!
    var audioPlayerNode: AVAudioPlayerNode!
    var stopTimer: Timer!
    
    enum ButtonType: Int { case slow = 0, fast, chipmunk, vader, echo, reverb}
    
    // MARK: Actions

    @IBAction func playSoundForButton(_ sender: UIButton) {
        switch(ButtonType(rawValue: sender.tag)!) {
           case .slow:
               playSound(rate: 0.5)
           case .fast:
               playSound(rate: 1.5)
           case .chipmunk:
               playSound(pitch: 1000)
           case .vader:
               playSound(pitch: -1000)
           case .echo:
               playSound(echo: true)
           case .reverb:
               playSound(reverb: true)
           }

           configureUI(.playing)
    }
    
    
    @IBAction func stopButtonPressed(_ sender: Any) {
        stopAudio()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupAudio()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        configureUI(.notPlaying)
    }

}
