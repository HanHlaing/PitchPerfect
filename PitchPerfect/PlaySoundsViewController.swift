//
//  PlaySoundsViewController.swift
//  PitchPerfect
//
//  Created by Han Hlaing Moe on 23/07/2021.
//

import UIKit
import AVFoundation

class PlaySoundsViewController: UIViewController {

    
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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

}
