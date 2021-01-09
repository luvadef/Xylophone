//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func CKeyPressed(_ sender: UIButton) {
        playSound(chord: "C")
    }
    
    @IBAction func DKeyPressed(_ sender: UIButton) {
        playSound(chord: "D")
    }
    
    @IBAction func EKeyPressed(_ sender: UIButton) {
        playSound(chord: "E")
    }
    
    @IBAction func FKeyPressed(_ sender: UIButton) {
        playSound(chord: "F")
    }
    
    @IBAction func GKeyPressed(_ sender: UIButton) {
        playSound(chord: "G")
    }
    
    @IBAction func AKeyPressed(_ sender: UIButton) {
        playSound(chord: "A")
    }
    
    @IBAction func BkeyPressed(_ sender: UIButton) {
        playSound(chord: "B")
    }
    
    func playSound(chord: String) {
        let url = Bundle.main.url(forResource: chord, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
  
}

