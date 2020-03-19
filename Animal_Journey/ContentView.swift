//
//  ContentView.swift
//  Animal_Journey
//
//  Created by Ufuoma Okoro on 11/03/2020.
//  Copyright © 2020 Ufuoma Okoro. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    
    //Animate the start button variable
    @State private var showStartButton = false
    @State private var rotation = 0.0
    
 
    
    
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
                                            }
                                        }
                                    
                                      
                                        
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
                                                        }
                                                                
                                                    }
                                                
                                                    
                                                        }//End of Enter button VStack
                                            
                                                
                                            }//End of Navigation link
                                            
                                            
                            
                                        
                                        
                                    }//End of Background ZStack
                        
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
