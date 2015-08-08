//
//  CliPlayer.swift
//  SimpleCliPlayer
//
//  Created by emptyhua on 15/8/8.
//  Copyright (c) 2015年 emptyhua. All rights reserved.
//

import Cocoa
import AVFoundation

class CliPlayer: NSObject, AVAudioPlayerDelegate {
    var finished: Bool = false
    var player: AVAudioPlayer?
    
    func play(path: String) {
        let url = NSURL.fileURLWithPath(path)
        var error: NSError?
        if let player = AVAudioPlayer(contentsOfURL: url, error: &error) {
            player.delegate = self;
            player.play()
            self.finished = false
            self.player = player;
        } else if let e = error {
            // error handling
        }
    }
    
    func audioPlayerDidFinishPlaying(player: AVAudioPlayer!, successfully flag: Bool) {
        self.player = nil
        self.finished = true
    }
}
