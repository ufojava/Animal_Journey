//
//  GameStructure.swift
//  Animal_Journey
//
//  Created by Ufuoma Okoro on 11/03/2020.
//  Copyright © 2020 Ufuoma Okoro. All rights reserved.
//

import SwiftUI



struct TestGame: View {
    
    var body: some View {
        
        Bee()
    }
}



//Preview game
struct TestGame_Previews: PreviewProvider {
    
    static var previews: some View {
        
        TestGame()
        
        
    }
}




struct GameImageV2: View {
    
    var imageName = ""
    var imageWidth: CGFloat
    var imageHeight: CGFloat
    
    var body: some View {
        
        Image(imageName)
            .resizable()
            .frame(width:imageWidth,height: imageHeight)
            .scaledToFill()
    }
}



struct Bee: View {
    
    
    //Set CG Point for Bee
    @State private var beeCurrentPosition: CGPoint = .zero
    @State private var beeNewPosition: CGPoint = .zero
    
    //Set Temporary move
    @State private var beeTempPosition: CGPoint = .init(x: 45, y: -150)
    

    
    //Track bee position
    @State private var getBeeXPosition = 0
    @State private var getBeeYPosition = 0
    
    
    //Bee Health
    @State private var beeHealth = 0
    
    
    

    
    
    
    
    var beeHome: String {
        
        var beeHomeResult = ""
        
        if (self.getBeeXPosition) == 0 && (self.getBeeYPosition) == 0 {
            
            beeHomeResult = "Bee is home 🤪"
          
            
        } else if (self.getBeeXPosition >= -20 && self.getBeeXPosition <= 20) && (self.getBeeYPosition >= -20 && self.getBeeYPosition <= 20) {
            
            beeHomeResult = "Bee is in the neighborhood 🤫"
            
        } else if (self.getBeeXPosition >= -40 && self.getBeeXPosition <= 40) && (self.getBeeYPosition >= -40 && self.getBeeYPosition <= 40) {
            
            beeHomeResult = "Bee is a little further away 🤨"
        } else if (self.getBeeXPosition >= -22 && self.getBeeXPosition <= 55) && (self.getBeeYPosition >= 315 && self.getBeeYPosition <= 370) {
            
            beeHomeResult = "Danger!!! Bee Killer Chemical  ☣️"
        } else {
            
            beeHomeResult = "Too far away"
        }
        
        
        return beeHomeResult
        
    }
    

    
    var body: some View {
        
        
        VStack {
               
                
                   VStack {
                  
                    ZStack {
                           
                           Color(red: 0.2, green: 0.4, blue: 0.4)
                            
                           .edgesIgnoringSafeArea(.all)
                           
                           VStack {
                       
                               Text("\(beeHome)")
                                
                                    
                               
                               Spacer().frame(height:20)
                               
                               Text("You are: \(self.getBeeYPosition) on Y axis").foregroundColor(Color.yellow)
                               Text("You are: \(self.getBeeXPosition) on X axis").foregroundColor(Color.red)
                            Spacer().frame(height:50)
                            
                            HStack {
                            GameImageV2(imageName: "Sunflower", imageWidth: 100, imageHeight: 100)
                                Text(" 👈🏾 Bee Food \n     Necter").font(.custom("Chalkboard SE", size: 30)).foregroundColor(Color.yellow)
                            }
                               Spacer()
                            
                            HStack(alignment: .bottom, spacing: 0) {
                            
                           
                            //Bee Killer Poisen
                            GameImageV2(imageName: "BeeKiller", imageWidth: 50, imageHeight: 70)
                            
                            //Tree covering the Killer Poisen
                            GameImageV2(imageName: "Tree", imageWidth: 130, imageHeight: 150)
                                
                            
                                
                            
                            }
                           }
                       
                        
                       
                       
                       
                        ZStack{
                        
                            
                            HStack {
                           
                                GameImageV2(imageName: "Bee", imageWidth: 150, imageHeight: 150)
                                    
                                           
                                   }.offset(x:self.beeCurrentPosition.x, y:beeCurrentPosition.y) //Current Position of Bee
                               
                          
                                   .gesture(DragGesture()
                               
                                       .onChanged { value in
                                           
                                           
                                           self.beeCurrentPosition = CGPoint(x:value.translation.width + self.beeNewPosition.x, y: value.translation.height + self.beeNewPosition.y)
                                           
                                           
                                       }//End onChanged
                                       
                                       .onEnded { value in
                                           
                                           self.beeCurrentPosition = CGPoint(x:value.translation.width + self.beeNewPosition.x, y:value.translation.height + self.beeNewPosition.y)
                                           self.beeNewPosition = self.beeCurrentPosition
                                           
                                           //Track Bee co-ordinates
                                           self.getBeeXPosition = Int(self.beeNewPosition.x)
                                           self.getBeeYPosition = Int(self.beeNewPosition.y)
                                           
                                       }
                                    
                               
                               ).animation(.spring())
                            
                          
                            //First Row of Home Image
                            
                            VStack {
                            HStack(spacing:20) {
                                
                                GameImageV2(imageName: "HomeFlower1", imageWidth: 80, imageHeight: 50)
                                GameImageV2(imageName: "HomeFlower2", imageWidth: 30, imageHeight: 80)
                                GameImageV2(imageName: "HomeFlower3", imageWidth: 50, imageHeight: 80)
                                
                            }
                            
                            HStack(spacing:60) {
                                                           
                               GameImageV2(imageName: "HomeFlower6", imageWidth: 80, imageHeight: 80)
                               GameImageV2(imageName: "HomeFlower4", imageWidth: 60, imageHeight: 80)
                               GameImageV2(imageName: "HomeFlower5", imageWidth: 50, imageHeight: 80)
                               
                           }
                                
                                HStack(spacing:20) {
                                                               
                                   GameImageV2(imageName: "HomeFlower3", imageWidth: 80, imageHeight: 50)
                                   GameImageV2(imageName: "HomeFlower2", imageWidth: 30, imageHeight: 80)
                                   GameImageV2(imageName: "HomeFlower1", imageWidth: 80, imageHeight: 50)
                                   
                               }
                       
                                
                                
                                
                                
                      
                            }//Home Vstack End
 

                       
                        }
                                 
                          
                               }
                    
                   
                   }
               
               
               
               }
    
        
        
        
        
    }
}



