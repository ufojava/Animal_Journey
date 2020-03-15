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



//Struct template for image
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


//Struct for main game
struct Bee: View {
    
    
    //Set CG Point for Bee
    @State private var beeCurrentPosition: CGPoint = .zero
    @State private var beeNewPosition: CGPoint = .zero
    
    
    //Track bee position
    @State private var getBeeXPosition = 0
    @State private var getBeeYPosition = 0
    @State private var bettyArrivesHome = false
    
    //Struct to tract Timer
    @State private var timeRemaining = 3
    let timer = Timer.publish(every: 60, on: .main, in: .common).autoconnect()
    @State private var readTimeRemaining = ""
    
    
    //Bee Health
    @State private var beeHealthCounter = 0
    @State private var checkBeeHealth = false
    @State private var beeHasBeenPoisened = false
    @State private var beeHasFedStatus = false
    @State private var beeLandsOnHoneyJar = false
    
    
    
    //Be has fed status
    @State private var beeHasFed = false
    var beeMessageMaxLimit = "Max food limit 😩"
    var beeMessageMinLimit = "Min food limit 😨"
    var beeMessageBeeKiller = "Betty poisened!! ☣️"
    
    
    //Naviagtion obstacles for top an buttom of screen
    var BottomimageObstacle = ["Honeycomb","BeeKiller","Honeycomb","BeeKiller","Honeycomb","BeeKiller","BeeKiller","BeeKiller"].shuffled()
    
    
    
    
    
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
        
        if (self.getBeeXPosition == 0) && (self.getBeeYPosition == 0) && self.beeHealthCounter > 0{
            
            beeHomeResult = "Betty is home 🤪"
          
            
        } else if (self.getBeeXPosition >= -20 && self.getBeeXPosition <= 20) && (self.getBeeYPosition >= -20 && self.getBeeYPosition <= 20) && self.beeHealthCounter > 0 {
            
            beeHomeResult = "Betty is near home 🤫"
            
        } else if (self.getBeeXPosition >= -40 && self.getBeeXPosition <= 40) && (self.getBeeYPosition >= -40 && self.getBeeYPosition <= 40) && self.beeHealthCounter > 0 {
            
            beeHomeResult = "Betty is far away 🤨"
        } else if (self.getBeeXPosition >= -120 && self.getBeeXPosition <= -100) && (self.getBeeYPosition >= 350 && self.getBeeYPosition <= 370) && self.beeHealthCounter > 0 {
            
            beeHomeResult = "Betty poisoned!! ☣️"
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                
                beeHomeResult = "Feed Betty now!!!"
            }
        } else if self.beeHealthCounter > 0 {
            
            beeHomeResult = "Betty has been fed"
        
        
     }else {
            
            beeHomeResult = "Betty needs food!!! "
        }
        
        
        return beeHomeResult
        
    }


    

    
    var body: some View {
        
        
        VStack {
               
                
                   VStack {
                  
                    ZStack {
                           
                           //Color(red: 0.2, green: 0.4, blue: 0.4)
                        Image("BettyWordBack_GrdOther")
                            .resizable()
                            .scaledToFill()
                           .edgesIgnoringSafeArea(.all)
                           
                           VStack {
                            HStack {
                               
                                Text("Betty's Status:").foregroundColor(Color.yellow).font(.custom("Chalkboard SE", size: 15))
                                Text("\(beeHome)").foregroundColor(Color.white).font(.custom("Chalkboard SE", size: 15))
                                
                            }
                               
                               Spacer().frame(height:10)
                               
                               Text("Betty is: \(self.getBeeYPosition) on Y axis").foregroundColor(Color.yellow).font(.custom("Chalkboard SE", size: 15))
                               Text("Betty is: \(self.getBeeXPosition) on X axis").foregroundColor(Color.red).font(.custom("Chalkboard SE", size: 15))
                            HStack {
                               //Text("Meals: \(self.beeHealthCounter)")
                                
                                //Monitor Time Remaining
                                
                                Text("\(timeRemaining)")
                                    .frame(width:40,height: 40)
                                    .background(Color.red)
                                    .foregroundColor(Color.white)
                                .clipShape(Circle())
                                    .onReceive(timer) {_ in
                                        
                                        if self.timeRemaining > 0 {
                                            self.timeRemaining -= 1
                                            
                                            if self.timeRemaining == 2 {
                                                
                                                self.readTimeRemaining = "\(self.timeRemaining) minutes remaining"
                                                ReadSynthWord(word: self.readTimeRemaining)
                                                
                                            } else if self.timeRemaining == 1 {
                                                
                                                self.readTimeRemaining = "\(self.timeRemaining) minute remaining"
                                                ReadSynthWord(word: self.readTimeRemaining)
                                                
                                            } else if self.timeRemaining == 0 {
                                                
                                                ReadSynthWord(word: "Time is up")
                                            }
                                            
                                            
                                           
                                        }
                                        
                                }
                                
                                Text("Minute(s) Remaining").foregroundColor(Color.white).font(.custom("Chalkboard SE", size: 15))
                            }//End of Timer HStack
            
                            
                            Spacer().frame(height:40)
                            
                            HStack {
                                GameImageV2(imageName: "Sunflower", imageWidth: 100, imageHeight: 100)
                                    
                    
                                
                                        
                                
                                Spacer().frame(width:60)
                                
                                VStack {
                                
                                Button(action: {
                                    
                                   
                                    
                                }) {
                         
                                    VStack {
                                    
                                    Text("Check health 🐝").font(.custom("Chalkboard SE", size: 15)).foregroundColor(Color.black)
                                        Spacer().frame(height:3)
                                        Image("Thermometer")
                                            .renderingMode(.original)
                                        .resizable()
                                        .frame(width:150,height: 15)
                                        .scaledToFill()
                                        
                                            .onTapGesture {
                                                self.checkBeeHealth = true
                                                self.processFoodLevel()
                                                playAudioFiles(sound: "BeeClickAction", type: "mp3")
                                        }
                                        
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
                        
                            }//End of the Sunflower HStack
                           
                            
                            Spacer()
                            
                            //Bottom Obstacles
                            HStack {
                                
                                ForEach(0..<BottomimageObstacle.count) { topImage in
                                    GameImageV2(imageName: self.BottomimageObstacle[topImage], imageWidth: 40, imageHeight: 40)
                                    
                                }
                                
                                
                            }
                            
                            
                            VStack {
                                
                                
                                
                                GameImageV2(imageName: "sun", imageWidth: 300, imageHeight: 50)
                                    HStack(alignment: .bottom, spacing: 0) {
                                    
                                   
                                        //Bee Killer Poisen
                                        GameImageV2(imageName: "BeeKiller", imageWidth: 50, imageHeight: 70)
                                        
                                        //Tree covering the Killer Poisen
                                        GameImageV2(imageName: "Tree", imageWidth: 130, imageHeight: 150)
                                        Spacer().frame(width:40)
                                        //Power Jar
                                        VStack {
                                            Text("Power").font(.custom("Chalkboard SE", size: 25)).foregroundColor(Color.yellow)
                                            Spacer().frame(height:3)
                                            GameImageV2(imageName: "Jar", imageWidth: 50, imageHeight: 70)
                                        }
                                    
                                    }
                            }
                            
                            
                           }
                       
                        
                       
                       
                       
                        ZStack{
                        
                            
                            HStack {
                           
                                GameImageV2(imageName: "Bee", imageWidth: 150, imageHeight: 150)
                                    
                                           
                                   }.offset(x:self.beeCurrentPosition.x, y:beeCurrentPosition.y) //Current Position of Bee
                                
                                .onAppear() {
                                    
                                    playAudioFiles(sound: "BettyBee_HomeButHungry", type: "mp3")
                                    
                                    DispatchQueue.main.asyncAfter(deadline: .now() + 10) {
                                        self.readTimeRemaining = "\(self.timeRemaining) minutes remaining"
                                        ReadSynthWord(word: String(self.readTimeRemaining))
                                    }
                            }
                                
                        
                               
                          
                                   .gesture(DragGesture()
                               
                                       .onChanged { value in
                                           
                                           
                                           self.beeCurrentPosition = CGPoint(x:value.translation.width + self.beeNewPosition.x, y: value.translation.height + self.beeNewPosition.y)
                                            
                                        
                                        
                                        //Bee Killer
                                        if (self.beeCurrentPosition.x  >= -140 && self.beeCurrentPosition.x <= -100) && (self.beeCurrentPosition.y >= 350 &&
                                            self.beeCurrentPosition.y <= 370) {
                                            
                                            self.beeHasBeenPoisened = true
                                            
                                            if self.beeHasBeenPoisened {
                                                
                                                self.beeHealthCounter = 0
                                                
                                                //Play Bethany's sound
                                                
                                                playAudioFiles(sound: "Danger", type: "mp3")
                                                
                                                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                                                    playAudioFiles(sound: "Bethany OH NO", type: "mp3")
                                                   
                                                }
                                                

                                                
                                            }
                                        
                                        }//End of Bee notification
                                        
                                        
                                        //Jar Power
                                        if (self.beeCurrentPosition.x >= 100 && self.beeCurrentPosition.x <= 108) && (self.beeCurrentPosition.y >= 352 && self.beeCurrentPosition.y <= 362) && self.beeHealthCounter > 0 {
                                            
                                            //Set Jar state to true
                                            self.beeLandsOnHoneyJar = true
                                            
                                            if self.beeLandsOnHoneyJar {
                                                
                                                playAudioFiles(sound: "BettyLandsOnJar", type: "mp3")
                                                
                                            }
                                            
                                            
                                        }
                                        
                                           
                                           
                                       }//End onChanged
                                       
                                       .onEnded { value in
                                           
                                           self.beeCurrentPosition = CGPoint(x:value.translation.width + self.beeNewPosition.x, y:value.translation.height + self.beeNewPosition.y)
                                           self.beeNewPosition = self.beeCurrentPosition
                                        
                                           
                                           //Track Bee co-ordinates
                                           self.getBeeXPosition = Int(self.beeNewPosition.x)
                                           self.getBeeYPosition = Int(self.beeNewPosition.y)
                                  
                                        
                                        //Betty arrives home
                                        if (self.getBeeXPosition == 0 && self.getBeeYPosition == 0) && (self.beeHealthCounter > 0) {
                                            
                                            playAudioFiles(sound: "Betty_Arrives_Home", type: "mp3")
                                            
                                        }//End of Betty arrives home
                                        
                                        //Jar Power
                                        if (self.beeCurrentPosition.x >= 100 && self.beeCurrentPosition.x <= 108) && (self.beeCurrentPosition.y >= 352 && self.beeCurrentPosition.y <= 362) && self.beeHealthCounter > 0 {
                                            
                                            //Set Jar state to true
                                            self.beeLandsOnHoneyJar = true
                                            
                                            if self.beeLandsOnHoneyJar {
                                                
                                                self.beeCurrentPosition = CGPoint(x: 0.0, y: 0.0)
                                               
                                                
                                            }
                                            
                                           
                                        }
                                        
                                        
                                        
                                           
                                       }//End of onEnded
                                    
                               
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



