//
//  SoundsViewController.swift
//  Sounds app
//
//  Created by Benecia Shi on 7/18/18.
//  Copyright © 2018 Benecia Shi. All rights reserved.
//

import UIKit
import AVFoundation

class SoundsViewController: UIViewController {
    
    var player: AVAudioPlayer! //or sound instead of player, etc.
    var soundName = ""
    
    func playSound() {
        if let path = Bundle.main.path(forResource: soundName, ofType: "mp3") {
            let url = URL(fileURLWithPath: path)
            do                                  {
                player = try AVAudioPlayer(contentsOf: url)
                player?.play()
            }
            catch {
                print("Can't find file")
            }
        }
    }
    
    @IBAction func onSoundButtoneTapped0(_ sender: Any) {
        soundName = "blackbirdSinging"
        playSound()
    }
    
    @IBAction func onSoundButtonTapped1(_ sender: Any) {
        soundName = "cinematicDrums"
        playSound()
    }
    
    @IBAction func onSoundButtonTapped2(_ sender: Any) {
        soundName = "firecrackers"
        playSound()
    }
    
    @IBAction func onSoundButtonTapped3(_ sender: Any) {
        soundName = "oceanSound"
        playSound()
    }
    
    @IBAction func onSoundButtonTapped4(_ sender: Any) {
        soundName = "caveDrop"
        playSound()
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
