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



struct GameImage: View {
    
    //Variables
    var inImage = ""
 
    var body: some View {
        
    
        
            
            Image(inImage)
                .resizable()
                .frame(width:150,height: 150)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white,lineWidth: 5))
                .scaledToFill()
            
        
        
    }

    
}



struct OtherGameImage: View {
     
     //Variables
     var inImage = ""
  
     var body: some View {
         
     
         
             
             Image(inImage)
                 .resizable()
                 .frame(width:100,height: 100)
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
    
    
    
    
    var beeHome: String {
        
        var beeHomeResult = ""
        
        if (self.getBeeXPosition) == 0 && (self.getBeeYPosition) == 0 {
            
            beeHomeResult = "Bee is home 🤪"
            
        } else if (self.getBeeXPosition >= -20 && self.getBeeXPosition <= 20) && (self.getBeeYPosition >= -20 && self.getBeeYPosition <= 20) {
            
            beeHomeResult = "Bee is in the neighborhood 🤫"
            
        } else if (self.getBeeXPosition >= -40 && self.getBeeXPosition <= 40) && (self.getBeeYPosition >= -40 && self.getBeeYPosition <= 40) {
            
            beeHomeResult = "Bee is a little further away 🤨"
        } else {
            
            beeHomeResult = "The bee is lost 😩"
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
                            OtherGameImage(inImage: "Sunflower")
                                Text(" 👈🏾 Bee Food \n     Necter").font(.custom("Chalkboard SE", size: 30)).foregroundColor(Color.yellow)
                            }
                               Spacer()
                            
                            
                            Image("BeeKiller")
                            .resizable()
                                .frame(width:130,height: 150)
                           }
                       
                        
                       
                       
                       
                        ZStack{
                        
                            
                            HStack {
                           
                            GameImage(inImage: "bee")
                                           
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
                       
                      
                         
                       
                        }
                                 
                          
                               }
                    
                   
                    
                    
                  
                    //Spacer()
                   }
               
               
               
               }
    
        
        
        
        
    }
}



