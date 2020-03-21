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
                                        
                                    
                                    
                                    Text("Take Betty to the Sun Flower").font(.custom("Chalkboard SE", size: 15))
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
                                    
                                    
                                    Text("Click on themometer to add meals").font(.custom("Chalkboard SE", size: 15))
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
                                    
                                    
                                    Text("Try to get Betty home. X and Y axis 0").font(.custom("Chalkboard SE", size: 15))
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
                                        
                                        
                                        Text("Avoid the random Bee killers").font(.custom("Chalkboard SE", size: 15))
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
                                    
                                    
                                    Text("There are a few 20 point bonuses").font(.custom("Chalkboard SE", size: 15))
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
                                        
                                    
                                    Text("You can get Betty home quicker via the magic jar").font(.custom("Chalkboard SE", size: 15))
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
                                    
                                    
                                    Text("If you hit the Bee Killer, go to Sunflower to feed").font(.custom("Chalkboard SE", size: 15))
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


