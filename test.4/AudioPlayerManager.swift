//
//  AudioPlayerManager.swift
//  test.4
//
//  Created by jumanah khalid albisher on 18/03/1445 AH.
//

import Foundation
import AVFoundation

class AudioPlayerManager {
    static let shared = AudioPlayerManager()
    private var player: AVPlayer?
    
    func playBackgroundMusic() {
        guard let audioPath = Bundle.main.path(forResource: "arabic", ofType: "mp3") else {
            print("Failed to find the audio file")
            return
        }
        
        let audioUrl = URL(fileURLWithPath: audioPath)
        player = AVPlayer(url: audioUrl)
        player?.play()
    }
}
