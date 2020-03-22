//
//  ContentView.swift
//  Animal_Journey
//
//  Created by Ufuoma Okoro on 11/03/2020.
//  Copyright © 2020 Ufuoma Okoro. All rights reserved.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
    
    
    //Animate the start button variable
    @State private var showStartButton = false
    @State private var gameHelpLink = false
    @State private var rotation = 0.0
    
    //Toggle to switch to control music
    @State private var backgroundMusicIsOnToggle = false
  
    
 
    
    
    var body: some View {
        
        
        
        
                NavigationView {
                    
                    
                    VStack {
                        
                                    ZStack {
                                
                                //Image background
                                Image("BettyWorldBackGrd")
                                    .resizable()
                                    .scaledToFill()
                                .edgesIgnoringSafeArea(.all)
                                    .onAppear() {
                                        
                                            withAnimation {
                                                self.showStartButton = true
                                                self.gameHelpLink = true
                                            }
                                        }
                                    
                                       VStack {
                                       
                                            NavigationLink(destination: Bee()) {
                                                
                                                
                                                VStack {
                                                    
                                                    if showStartButton {
                                                    
                                                            Text("Enter")
                                                                .font(.custom("Chalkboard SE", size: 35))
                                                                .foregroundColor(Color.orange)
                                                                Spacer().frame(height:10)
                                                                Image("Betty_Compass").renderingMode(.original)
                                                                .resizable()
                                                                .frame(width:160,height: 180)
                                                                .scaledToFill()
                                                                .clipShape(Circle())
                                                                .overlay(Circle().stroke(Color.green,lineWidth: 3))
                                                                    
                                                                //Button Animation
                                                                    .rotationEffect(.degrees(rotation)) //Using rotation variable
                                                                    .animation(Animation.easeOut(duration: 3).delay(1))
                                                                    .onAppear() {
                                                                        
                                                                        self.rotation += 360
                                                                        
                                                                        PlayBackgroundMusic(sound: "Fantasyland", type: "mp3")
                                                                       
                                                                    
                                                                      
                                                        }
                                                                
                                                    }//End of If ShowStartButton
                                                    
                                                    
                                                    
                                                   
                                                
                                                
                                                
                                            }//End of VStack within Navigation Link
                                            
                                           
                                    
                                            }//End of Bee Navigation link
                            
                                        
                                        
                                                                 
                                         if self.gameHelpLink {
                                            
                                            NavigationLink(destination: GameHelp()) {
                                            
                                            Text("Help").foregroundColor(Color.orange)
                                                
                                               
                                         }
                                        
                                        }
                                        
                                        HStack {
                                            
                                                Text("Pause / Play background Music")
                                                    .font(.custom("Chalkboard SE", size: 15))
                                                    .foregroundColor(Color.orange)
                                                
                                                MusicIcons(icons: "pause")
                                                    .onTapGesture {
                                                        
                                                        pauseMusic()
                                                
                                                }
                                            
                                                MusicIcons(icons: "play")
                                                    .onTapGesture {
                                                      resumeMusic()
                                            }
                                        }
                                        
                                        
                                        
                                        
                                     }//VStack for buttons within ZStack
                                       
                                        
                                    }//End of Background ZStack
                        
                        
                            //Test Positioning
                     
                        
                        
                        
                        
                    }//End of View VStack
            
                        .navigationBarTitle("Home 🏚")
                  
                    
                }//End of Navigation link
        
        
      
        
        
        }
            
    }//End of main Viwe
 


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct MusicIcons: View {
    
    var icons = ""
    
    
    var body: some View {
        
        
        
        Image(systemName: icons)
            .resizable()
            .frame(width:20,height: 20)
            .scaledToFill()
            .foregroundColor(Color.black)

        
    }
}
