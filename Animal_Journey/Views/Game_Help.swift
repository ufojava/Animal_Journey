//
//  Game_Help.swift
//  Animal_Journey
//
//  Created by Ufuoma Okoro on 20/03/2020.
//  Copyright © 2020 Ufuoma Okoro. All rights reserved.
//

import SwiftUI

struct GameHelp: View {
    
    @State private var showGameTips = false
    @State private var rotation = 0.0
    
    

var body: some View {
    
   
    VStack {
        
                    
        
        ZStack {
            
            
            //Set the background
            
            Image("BettyWordBack_GrdOther")
                       .resizable()
                       .scaledToFill()
                      .edgesIgnoringSafeArea(.all)
            
            
            VStack {
                
                VStack {
        
                    Text("Instructions")
                        .font(.title)
                        .foregroundColor(Color.white)
                    
                        .onAppear() {
                            
                            withAnimation {
                                
                            self.showGameTips = true
                            }
                    }
                    
                    
                    Image("Wood_Block")
                        .resizable()
                        .frame(width:60,height: 60)
                        .scaledToFill()
                    .rotationEffect(.degrees(rotation)) //Using rotation variable
                                .animation(Animation.easeOut(duration: 3).delay(1))
                                .onAppear() {
                                    
                                    self.rotation += 360
                                
                    }
                    
                    Spacer().frame(height:20)
                    
                }//Title VStack
                
                VStack {
                    
                    if showGameTips {
                    Text("The aim of the game is to get Betty from home for\n a meal and back again with maximum point. Good Luck 👌")
                        .font(.custom("Chalkboard SE", size: 15))
                        .transition(.slide)
                    }
                    
                }.padding()
                
                
                
                VStack(alignment: .leading) {
                    
                    if self.showGameTips {
     
                                HStack {
                                    Text("1")
                                        .frame(width:30,height:30)
                                        
                                        .background(Color.orange)
                                        .foregroundColor(Color.white)
                                        .clipShape(Rectangle())
                                        .overlay(RoundedRectangle(cornerRadius: 4).stroke(Color.black,lineWidth: 2))
                                        .transition(.slide)
                                        
                                    
                                    
                                    Text("Take Betty to the Sun Flower to add meals 🍔").font(.custom("Chalkboard SE", size: 15))
                                        .transition(.slide)
                            
                    
                    }.padding()
                        
                    
                    
                 
                        
                       
                    
                                HStack {
                                    Text("2")
                                        .frame(width:30,height:30)
                                        
                                        .background(Color.orange)
                                        .foregroundColor(Color.white)
                                        .clipShape(Rectangle())
                                        .overlay(RoundedRectangle(cornerRadius: 4).stroke(Color.black,lineWidth: 2))
                                        .transition(.slide)
                                    
                                    
                                    Text("Click on themometer to add meals, max 40 points\n there!! 🌡").font(.custom("Chalkboard SE", size: 15))
                                        .transition(.slide)
                    
                                    }.padding()
                    
                 
                    
                  
                    
                    HStack {
                                    Text("3")
                                        .frame(width:30,height:30)
                                        
                                        .background(Color.orange)
                                        .foregroundColor(Color.white)
                                        .clipShape(Rectangle())
                                        .overlay(RoundedRectangle(cornerRadius: 4).stroke(Color.black,lineWidth: 2))
                                        .transition(.slide)
                                    
                                    
                                    Text("Try get the honeycombs. 20 bonus points each 🤪 ").font(.custom("Chalkboard SE", size: 15))
                                        .transition(.slide)
                    
                                    }.padding()
                 
                    
                    
                   
                                HStack {
                                        Text("4")
                                            .frame(width:30,height:30)
                                            
                                            .background(Color.orange)
                                            .foregroundColor(Color.white)
                                            .clipShape(Rectangle())
                                            .overlay(RoundedRectangle(cornerRadius: 4).stroke(Color.black,lineWidth: 2))
                                            .transition(.slide)
                                        
                                        
                                        Text("Avoid the moving Bee killers. 20 point deducted ☣️").font(.custom("Chalkboard SE", size: 15))
                                            .transition(.slide)
                                
                                    }.padding()
                    
                    
                   
                    
                    HStack {
                                    Text("5")
                                        .frame(width:30,height:30)
                                        
                                        .background(Color.orange)
                                        .foregroundColor(Color.white)
                                        .clipShape(Rectangle())
                                        .overlay(RoundedRectangle(cornerRadius: 4).stroke(Color.black,lineWidth: 2))
                                        .transition(.slide)
                                    
                                    
                                    Text("Get Betty close to  X: 0 Y: 0 you get 320 plus bonus\n points 🍻").font(.custom("Chalkboard SE", size: 15))
                                        .transition(.slide)
                    
                                    }.padding()
                    
                
                    
                        if self.showGameTips {
                    
                    HStack {
                                    Text("6")
                                        .frame(width:30,height:30)
                                        
                                        .background(Color.orange)
                                        .foregroundColor(Color.white)
                                        .clipShape(Rectangle())
                                        .overlay(RoundedRectangle(cornerRadius: 4).stroke(Color.black,lineWidth: 2))
                                        .transition(.slide)
                                        
                                    
                                    Text("You can get Betty home quicker via the Magic\n Jar, but you lose the jackpot 🍯").font(.custom("Chalkboard SE", size: 15))
                                        .transition(.slide)
                    
                                    }.padding()
                    
                        }
                    }
                   
                    HStack {
                                    Text("7")
                                        .frame(width:30,height:30)
                                        
                                        .background(Color.orange)
                                        .foregroundColor(Color.white)
                                        .clipShape(Rectangle())
                                        .overlay(RoundedRectangle(cornerRadius: 4).stroke(Color.black,lineWidth: 2))
                                        .transition(.slide)
                                    
                                    
                                    Text("Remember, you only have 3 minutes to complete\n game ⏰").font(.custom("Chalkboard SE", size: 15))
                                    .transition(.slide)
                    
                                    }.padding()
                    
                    
                Spacer()
                
                }
            }
            
            
   
        }
        
        
    }
}

}


struct GameHelp_Preview: PreviewProvider {
    
    static var previews: some View {
        
        GameHelp()
    }
}


