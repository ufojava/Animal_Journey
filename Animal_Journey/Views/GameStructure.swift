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
    
    
    //Track bee position
    @State private var getBeeXPosition = 0
    @State private var getBeeYPosition = 0
    
    
    //Bee Health
    @State private var beeHealthCounter = 0
    @State private var checkBeeHealth = false
    
    //Be has fed status
    @State private var beeHasFed = false
    var beeMessageMaxLimit = "Max food limit 😩"
    var beeMessageMinLimit = "Min food limit 😨"
    var beeMessageBeeKiller = "Bee poisened so needs norishment 🍯"
    
    
    
    //Function to Check food
    func processFoodLevel() {
        
        
        //Reset Bee Hive Counter
        if self.beeHealthCounter > 4 {
            
            self.beeHealthCounter = 0
        }
        
        
        //Feed Bee
        if (self.getBeeXPosition >= -120 && self.getBeeXPosition <= -100) && (self.getBeeYPosition >= -250 && self.getBeeYPosition <= 200) && (self.beeHealthCounter >= 0 && self.beeHealthCounter <= 4) {
            
            
            self.beeHealthCounter += 1
            
        } else if (self.getBeeXPosition >= -60 && self.getBeeXPosition <= 30) && (self.getBeeYPosition >= 342 && self.getBeeYPosition <= 500) && self.beeHealthCounter > 0 {
            
            self.beeHealthCounter = 0
        }
        
        
        
    }
    
    
    //Function to return view
    func beeFoodOne() -> some View {
        
        
        GameImageV2(imageName: "LunchBox", imageWidth: 30, imageHeight: 30)
    
        
    }
    
    //Bee Hive Two
    func beeFoodTwo() -> some View {
        
        HStack {
        GameImageV2(imageName: "LunchBox", imageWidth: 30, imageHeight: 30)
        GameImageV2(imageName: "LunchBox1", imageWidth: 30, imageHeight: 30)
    
        }
    }
    
    //Bee Hive Three
    func beeFoodThree() -> some View {
        
        HStack {
        GameImageV2(imageName: "LunchBox", imageWidth: 30, imageHeight: 30)
        GameImageV2(imageName: "LunchBox1", imageWidth: 30, imageHeight: 30)
        GameImageV2(imageName: "LunchBox2", imageWidth: 30, imageHeight: 30)
    
        }
    }
    
    
    //Bee Hive Three
    func beeFoodFour() -> some View {
        
        HStack {
        GameImageV2(imageName: "LunchBox", imageWidth: 30, imageHeight: 30)
        GameImageV2(imageName: "LunchBox1", imageWidth: 30, imageHeight: 30)
        GameImageV2(imageName: "LunchBox2", imageWidth: 30, imageHeight: 30)
        GameImageV2(imageName: "LunchBox3", imageWidth: 30, imageHeight: 30)
    
        }
    }

    
    

    
    
    
    
    var beeHome: String {
        
        var beeHomeResult = ""
        
        if (self.getBeeXPosition >= -5 && self.getBeeXPosition <= 5) && (self.getBeeYPosition >= -5 && self.getBeeYPosition <= 5) && self.beeHealthCounter > 0{
            
            beeHomeResult = "Bee is home 🤪"
          
            
        } else if (self.getBeeXPosition >= -20 && self.getBeeXPosition <= 20) && (self.getBeeYPosition >= -20 && self.getBeeYPosition <= 20) && self.beeHealthCounter > 0 {
            
            beeHomeResult = "Bee is in the neighborhood 🤫"
            
        } else if (self.getBeeXPosition >= -40 && self.getBeeXPosition <= 40) && (self.getBeeYPosition >= -40 && self.getBeeYPosition <= 40) && self.beeHealthCounter > 0 {
            
            beeHomeResult = "Bee is a little further away 🤨"
        } else if (self.getBeeXPosition >= -22 && self.getBeeXPosition <= 55) && (self.getBeeYPosition >= 315 && self.getBeeYPosition <= 370) && self.beeHealthCounter > 0 {
            
            beeHomeResult = "Chemical!!! Feed Bee Now! 🍔"
        } else {
            
            beeHomeResult = "Bee needs food!!! "
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
                            HStack {
                               
                                Text("Travel Guide:").foregroundColor(Color.yellow)
                               Text("\(beeHome)")
                                
                            }
                               
                               Spacer().frame(height:20)
                               
                               Text("You are: \(self.getBeeYPosition) on Y axis").foregroundColor(Color.yellow)
                               Text("You are: \(self.getBeeXPosition) on X axis").foregroundColor(Color.red)
                               Text("Meals \(self.beeHealthCounter)")
                            
            
                            
                            Spacer().frame(height:40)
                            
                            HStack {
                                GameImageV2(imageName: "Sunflower", imageWidth: 100, imageHeight: 100)
                                    
                    
                                
                                        
                                
                                Spacer().frame(width:60)
                                
                                VStack {
                                
                                Button(action: {
                                    
                                    self.checkBeeHealth = true
                                    self.processFoodLevel()
                                    
                                }) {
                         
                                    VStack {
                                    
                                    Text("Click to Eat 🐝").font(.custom("Chalkboard SE", size: 15)).foregroundColor(Color.black)
                                        Spacer().frame(height:3)
                                        Image("Thermometer")
                                            .renderingMode(.original)
                                        .resizable()
                                        .frame(width:150,height: 15)
                                        .scaledToFill()
                                        
                                    }
                                    
                                }
                                    
                                
                                if self.checkBeeHealth {
                                    
                                    if (self.beeHealthCounter == 0) && (self.getBeeXPosition >= -120 && self.getBeeXPosition <= -100) && (self.getBeeYPosition >= -250 && self.getBeeYPosition <= 200) {
                                       
                                      
                                        Text("\(self.beeMessageMinLimit)")
                                     
                                    } else if(self.beeHealthCounter == 5) && (self.getBeeXPosition >= -120 && self.getBeeXPosition <= -100) && (self.getBeeYPosition >= -250 && self.getBeeYPosition <= 200) {
                                        
                                        Text("\(self.beeMessageMaxLimit)")
                                      
                                        
                                    } else if self.beeHealthCounter == 1 {
                                        
                                        beeFoodOne()
                                        
                                    } else if self.beeHealthCounter == 2 {
                                        
                                        
                                        beeFoodTwo()
                                        
                                    } else if self.beeHealthCounter == 3 {
                                        
                                        
                                        beeFoodThree()
                                        
                                        
                                    } else if self.beeHealthCounter == 4 {
                                        
                                        beeFoodFour()
                                        
                                    } else if (self.beeHealthCounter < 5) && (self.getBeeXPosition >= -60 && self.getBeeXPosition <= 30) && (self.getBeeYPosition >= 342 && self.getBeeYPosition <= 500) {
                                        
                                        Text("\(self.beeMessageBeeKiller)")
                                    }
                                }
                                
                            
                                }
                        
                            }
                               Spacer()
                            
                            VStack {
                                
                                GameImageV2(imageName: "sun", imageWidth: 300, imageHeight: 50)
                                    HStack(alignment: .bottom, spacing: 0) {
                                    
                                   
                                        //Bee Killer Poisen
                                        GameImageV2(imageName: "BeeKiller", imageWidth: 50, imageHeight: 70)
                                        
                                        //Tree covering the Killer Poisen
                                        GameImageV2(imageName: "Tree", imageWidth: 130, imageHeight: 150)
                                        
                                    
                                        
                                    
                                    }
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



