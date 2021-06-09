//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func redKeyPressed(_ sender: UIButton) {
      

        playSound(whichButton : sender.currentTitle! )

    }
    
    
    func playSound(whichButton :String) {
        let url = Bundle.main.url(forResource: whichButton, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
    
    
   

}

