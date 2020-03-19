//
//  BettyAudioPlayer.swift
//  Animal_Journey
//
//  Created by Ufuoma Okoro on 14/03/2020.
//  Copyright © 2020 Ufuoma Okoro. All rights reserved.
//

import Foundation
import AVFoundation

//Set variable for the audio player
var audioPlayer: AVAudioPlayer?


func playAudioFiles(sound: String, type: String) {
    
    
    //If let to ensure the file exist
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        
        
        do {
            
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
            
        } catch {
            
            print("Could not find file")
        }
        
        
    }
    
}

//function to read synthersized time

func ReadSynthWord(word: String) {
    
    let utterance = AVSpeechUtterance(string: word)
    utterance.voice = AVSpeechSynthesisVoice(language: "en-GB")
    utterance.rate = 0.5
    
    let synthersizer = AVSpeechSynthesizer()
    synthersizer.speak(utterance)
    
}


//Funciton to play background music
func PlayBackgroundMusic(sound:String, type:String) {
    
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        
        do {
            
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
            
        } catch {
            
            print("Unable to find file")
        }
    }
    
}
