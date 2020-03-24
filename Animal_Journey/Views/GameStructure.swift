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
        //Text("Place holder")
            
     
        
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
    
    //Home
    
    @State private var homeScreen = false
    
    //Set CG Point for Bee
    @State private var beeCurrentPosition: CGPoint = .zero
    @State private var beeNewPosition: CGPoint = .zero
    
    //Bottom Obstacle Array Current Position

    @State private var imageArrayCurrentOnePosition: CGPoint = .zero
    @State private var imageArrayNewOnePosition: CGPoint = .zero
    
    @State private var imageArrayCurrentTwoPosition: CGPoint = .zero
    @State private var imageArrayNewTwoPosition: CGPoint = .zero
    
    @State private var imageArrayCurrentThreePosition: CGPoint = .zero
    @State private var imageArrayNewThreePosition: CGPoint = .zero
    
    @State private var imageArrayCurrentFourPosition: CGPoint = .zero
    @State private var imageArrayNewFourPosition: CGPoint = .zero
    
    @State private var imageArrayCurrentFivePosition: CGPoint = .zero
    @State private var imageArrayNewFivePosition: CGPoint = .zero
    
    @State private var imageArrayCurrentSixPosition: CGPoint = .zero
    @State private var imageArrayNewSixPosition: CGPoint = .zero
    
    @State private var imageArrayCurrentSevenPosition: CGPoint = .zero
    @State private var imageArrayNewSevenPosition: CGPoint = .zero
    
    @State private var imageArrayCurrentEightPosition: CGPoint = .zero
    @State private var imageArrayNewEightPosition: CGPoint = .zero
    
    //Top Obstacle Array Current Position

       @State private var topArrayCurrentOnePosition: CGPoint = .zero
       @State private var topArrayNewOnePosition: CGPoint = .zero
       
       @State private var topArrayCurrentTwoPosition: CGPoint = .zero
       @State private var topArrayNewTwoPosition: CGPoint = .zero
       
       @State private var topArrayCurrentThreePosition: CGPoint = .zero
       @State private var topArrayNewThreePosition: CGPoint = .zero
       
       @State private var topArrayCurrentFourPosition: CGPoint = .zero
       @State private var topArrayNewFourPosition: CGPoint = .zero
       
       @State private var topArrayCurrentFivePosition: CGPoint = .zero
       @State private var topArrayNewFivePosition: CGPoint = .zero
       
       @State private var topArrayCurrentSixPosition: CGPoint = .zero
       @State private var topArrayNewSixPosition: CGPoint = .zero
       
       @State private var topArrayCurrentSevenPosition: CGPoint = .zero
       @State private var topArrayNewSevenPosition: CGPoint = .zero
       
       @State private var topArrayCurrentEightPosition: CGPoint = .zero
       @State private var topArrayNewEightPosition: CGPoint = .zero
    
    //Bonus points
    @State private var bonusPointOneCurrentPoistion:    CGPoint = .zero
    @State private var bonusPointOneNewPosition:    CGPoint = .zero
    
    @State private var bonusPointTwoCurrentPoistion:    CGPoint = .zero
    @State private var bonusPointTwoNewPosition:    CGPoint = .zero
    
    @State private var bonusPointThreeCurrentPoistion:    CGPoint = .zero
    @State private var bonusPointThreeNewPosition:    CGPoint = .zero
    
    @State private var bonusPointFourCurrentPoistion:    CGPoint = .zero
    @State private var bonusPointFourNewPosition:    CGPoint = .zero
    
    @State private var bonusPointFiveCurrentPoistion:    CGPoint = .zero
    @State private var bonusPointFiveNewPosition:    CGPoint = .zero
    
    @State private var bonusPointSixCurrentPoistion:    CGPoint = .zero
    @State private var bonusPointSixNewPosition:    CGPoint = .zero
    
    @State private var bonusPointSevenCurrentPoistion:    CGPoint = .zero
    @State private var bonusPointSevenNewPosition:    CGPoint = .zero
 
    
    //Set Honeycomb bonus state position Top
    @State private var honeycombBonusPointOneTopState = false
    @State private var honeycombBonusPointTwoTopState = false
    @State private var honeycombBonusPointThreeTopState = false
    @State private var honeycombBonusPointFourTopState = false
    @State private var honeycombBonusPointFiveTopState = false
    @State private var honeycombBonusPointSixTopState = false
    @State private var honeycombBonusPointSevenTopState = false
    @State private var honeycombBonusPointEightTopState = false
    
    
    //Set Honeycomb bonus state position Bottom
    @State private var HoneycombBonusPointOneBottomState = false
    @State private var HoneycombBonusPointTwoBottomState = false
    @State private var HoneycombBonusPointThreeBottomState = false
    @State private var HoneycombBonusPointFourBottomState = false
    @State private var HoneycombBonusPointFiveBottomState = false
    @State private var HoneycombBonusPointSixBottomState = false
    @State private var HoneycombBonusPointSevenBottomState = false
    @State private var HoneycombBonusPointEightBottomState = false
    
    
    //Set Bee Killer bonus state position Top
   @State private var beeKillerBonusPointOneTopState = false
   @State private var beeKillerBonusPointTwoTopState = false
   @State private var beeKillerBonusPointThreeTopState = false
   @State private var beeKillerBonusPointFourTopState = false
   @State private var beeKillerBonusPointFiveTopState = false
   @State private var beeKillerBonusPointSixTopState = false
   @State private var beeKillerBonusPointSevenTopState = false
   @State private var beeKillerBonusPointEightTopState = false
       
       
   //Set Bee Killer bonus state position Bottom
   @State private var beeKillerBonusPointOneBottomState = false
   @State private var beeKillerBonusPointTwoBottomState = false
   @State private var beeKillerBonusPointThreeBottomState = false
   @State private var beeKillerBonusPointFourBottomState = false
   @State private var beeKillerBonusPointFiveBottomState = false
   @State private var beeKillerBonusPointSixBottomState = false
   @State private var beeKillerBonusPointSevenBottomState = false
   @State private var beeKillerBonusPointEightBottomState = false
    
    
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
    @State private var bettyStatus = ""
    
    //Player Score
    @State private var playerScore = 0
    
    //Variable to Obstacle reset
    @State private var obstacleResetTimerStatus = false
    @State private var obstacleResetTime = 180
    let resetTimer = Timer.publish(every: 5, on: .main, in: .common).autoconnect()
    
    
    //Variables to hold scores
    @State private var finalScores = 0
    @State private var bonusPoints = 0
    
    
    //Game status
    @State private var gamePlayStatus = true
    
    
    
    
    
    //Be has fed status
    @State private var beeHasFed = false
    var beeMessageMaxLimit = "Max food limit 😩"
    var beeMessageMinLimit = "Min food limit 😨"
    var beeMessageBeeKiller = "Betty poisened!! ☣️"
    
    
    //Naviagtion obstacles for top an buttom of screen
    @State private var topImageObstacle = ["Honeycomb","BeeKiller","Honeycomb","BeeKiller","Honeycomb","BeeKiller","BeeKiller","BeeKiller"].shuffled()
    @State private var BottomimageObstacle = ["Honeycomb","BeeKiller","Honeycomb","BeeKiller","Honeycomb","BeeKiller","BeeKiller","BeeKiller"].shuffled()
    
    
    
    
    
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
        
        if (self.beeCurrentPosition.x >= -3 && self.beeCurrentPosition.x <= 3) && (self.beeCurrentPosition.y >= -3 && self.beeCurrentPosition.y <= 3) && (self.beeHealthCounter > 0){
            
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
        } else if self.beeHealthCounter > 0 && self.timeRemaining != 0 {
            
            beeHomeResult = "Betty has been fed 🍔"
        
        
        }else if self.timeRemaining == 0 {
            
            beeHomeResult = "Game has now ended ❌"
        
        } else {
            
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
                               
                                
                                Text("Betty's Status:").foregroundColor(Color.yellow).font(.custom("Chalkboard SE", size: 20))
                                Text("\(beeHome)").foregroundColor(Color.white).font(.custom("Chalkboard SE", size: 20))
                                
                            }
                               
                               Spacer().frame(height:10)
                               
                            Text("Betty's Location X: \(self.getBeeXPosition) Y: \(self.getBeeYPosition)").foregroundColor(Color.black).font(.custom("Chalkboard SE", size: 20))
                                .frame(width:350,height: 30)
                                .background(Color.green)
                                .overlay(RoundedRectangle(cornerRadius: 6).stroke(Color.white,lineWidth: 2))
                                
                            Spacer().frame(height:10)
                            HStack {
                               
                                
                                //Monitor Time Remaining
                                
                                Text("\(timeRemaining)")
                                    .frame(width:40,height: 40)
                                    .background(Color.red)
                                    .foregroundColor(Color.white)
                                    .clipShape(Circle())
                                    .overlay(Circle().stroke(Color.white,lineWidth: 2))
                                    .onReceive(timer) {_ in
                                        
                                        if self.timeRemaining > 0 && self.gamePlayStatus == true {
                                            self.timeRemaining -= 1
                                            
                                            if self.timeRemaining == 2  && self.gamePlayStatus == true {
                                                
                                                self.readTimeRemaining = "\(self.timeRemaining) minutes remaining"
                                                ReadSynthWord(word: self.readTimeRemaining)
                                                
                                            } else if self.timeRemaining == 1 {
                                                
                                                self.readTimeRemaining = "\(self.timeRemaining) minute remaining"
                                                ReadSynthWord(word: self.readTimeRemaining)
                                                
                                            } else if self.timeRemaining == 0 && self.gamePlayStatus == true {
                                                
                                                ReadSynthWord(word: "Time is up")
                                                
                                                
                                                
                                                //Resetting timer values to zero
                                                self.timeRemaining = 0
                                                self.obstacleResetTime = 0
                                                self.finalScores += self.playerScore
                                                
                                                DispatchQueue.main.asyncAfter(deadline: .now() + 10) {
                                                    
                                                    ReadSynthWord(word: "Your final score is \(self.finalScores)")
                                                }
                                                
                                                DispatchQueue.main.asyncAfter(deadline: .now() + 18) {
                                                    
                                                    playAudioFiles(sound: "Betty_Arrives_Home", type: "mp3")
                                                    
                                                }
                                                
                                                self.playerScore = 0
                                                self.gamePlayStatus = false
                                                pauseMusic()
                                        
                                                
                                            }
                                            
                                            
                                           
                                        }
                                        
                                }
                                
                                Text("Min(s)").foregroundColor(Color.white).font(.custom("Chalkboard SE", size: 20))
                                
                                //Space
                                Spacer().frame(width:5)
                                
                                //Player Health
                                
                                Text("\(self.playerScore)")
                                    .frame(width:40,height: 40)
                                        .background(Color.blue)
                                        .foregroundColor(Color.white)
                                        .clipShape(Circle())
                                        .overlay(Circle().stroke(Color.white,lineWidth: 2))
                                
                                Text("Health").foregroundColor(Color.white).font(.custom("Chalkbaord SE", size: 20))
                                
                                
                                Text("\(self.finalScores)")
                                    .frame(width:40,height: 40)
                                    .background(Color.yellow)
                                    .foregroundColor(Color.black)
                                    .clipShape(Circle())
                                    .overlay(Circle().stroke(Color.white,lineWidth: 2))
                                
                                Text("Score").foregroundColor(Color.white).font(.custom("Chalkbaord SE", size: 20))
                                
                                
                            }//End of Timer HStack
            
                            
                            Spacer().frame(height:20)
                            VStack {
                            
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
                                                
                                                //Add 10 Points to Player Score
                                                
                                                if self.playerScore <= 30 || self.playerScore < 40 {
                                                    
                                                self.playerScore += 10
                                                    
                                                    ReadSynthWord(word: "\(self.playerScore) Booster Meals")
                                                } else {
                                                    
                                                    ReadSynthWord(word: "You have maximum booster meals")
                                                }
                                                playAudioFiles(sound: "BeeClickAction", type: "mp3")
                                        }
                                        
                                    }//End of Thermostat Vstack
                                    
                                }//End of Button Healthcheck
                                    
                                
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
                            //Top Obstacles
                            
                                HStack {
                                
                                ForEach(0..<topImageObstacle.count) {topImage in
                                    
                                    GameImageV2(imageName: self.topImageObstacle[topImage], imageWidth: 40, imageHeight: 40)
                                    
                                    
                                    
                                }.onReceive(resetTimer) { time in
                                    
                                    
                                    if self.obstacleResetTime == 0 {
                                        
                                        self.resetTimer.upstream.connect().cancel() //To cancel if zero is reached
                                        
                                    } else {
                                        
                                        self.obstacleResetTimerStatus = true
                                    }
                                    
                                    if self.obstacleResetTimerStatus {
                                        
                                        self.topImageObstacle.shuffle()
                                    }
                                     
                                 
                                    }
                                    
                                }//End Top Obstacle HStack
                                
                            }//End of VStack for top part of screen
                            
                            Spacer()
                            
                            //Bottom Obstacles
                            HStack {
                               
                                ForEach(0..<BottomimageObstacle.count) { bottomImage in
                                    GameImageV2(imageName: self.BottomimageObstacle[bottomImage], imageWidth: 40, imageHeight: 40)
                                    
                                }.onReceive(resetTimer) { time in
                                    
                                    if self.obstacleResetTime == 0 {
                                        
                                        self.resetTimer.upstream.connect().cancel() //To cancel when zero is reached
                                        
                                    } else {
                                        
                                        self.obstacleResetTimerStatus = true
                                        
                                    }
                                        
                                    if self.obstacleResetTimerStatus {
                                        self.BottomimageObstacle.shuffle() //Shuffle the array
                                    }
                                    
                                    self.obstacleResetTime -= 5
                                }
                                
                              
                                
                            }//End of obstacles
                            
                            
                            VStack {
                                
                                
                                
                                GameImageV2(imageName: "sun", imageWidth: 280, imageHeight: 40)
                                    HStack(alignment: .bottom, spacing: 0) {
                                    
                                   
                                        //Bee Killer Poisen
                                        GameImageV2(imageName: "Hazard", imageWidth: 40, imageHeight: 40)
                                        
                                        //Tree covering the Killer Poisen
                                        GameImageV2(imageName: "Tree", imageWidth: 110, imageHeight: 130)
                                        Spacer().frame(width:30)
                                        //Power Jar
                                        VStack {
                                            Text("Magic Jar").font(.custom("Chalkboard SE", size: 20)).foregroundColor(Color.yellow)
                                            Spacer().frame(height:3)
                                            GameImageV2(imageName: "Jar", imageWidth: 40, imageHeight: 40)
                                        }
                                    
                                    }
                            }
                            
                            
                           }
                       
                        
                       
                       
                       
                        ZStack{
                        
                            
                            HStack {
                           
                                GameImageV2(imageName: "Bee", imageWidth: 130, imageHeight: 130)
                                    
                                           
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
                                           
                                           //Bee Cordinates
                                           self.beeCurrentPosition = CGPoint(x:value.translation.width + self.beeNewPosition.x, y: value.translation.height + self.beeNewPosition.y)
                                        
                                        
                                        //Top Array Coordinates
                                        self.topArrayCurrentOnePosition = CGPoint(x:value.translation.width + self.topArrayNewOnePosition.x, y: value.translation.height + self.topArrayNewOnePosition.y)
                                        
                                        self.topArrayCurrentTwoPosition = CGPoint(x:value.translation.width + self.topArrayNewTwoPosition.x, y: value.translation.height + self.topArrayNewTwoPosition.y)
                                        
                                        self.topArrayCurrentThreePosition = CGPoint(x:value.translation.width + self.topArrayNewThreePosition.x, y: value.translation.height + self.topArrayNewThreePosition.y)
                                        
                                        self.topArrayCurrentFourPosition = CGPoint(x:value.translation.width + self.topArrayNewFourPosition.x, y: value.translation.height + self.topArrayNewFourPosition.y)
                                        
                                        self.topArrayCurrentFivePosition = CGPoint(x:value.translation.width + self.topArrayNewFivePosition.x, y: value.translation.height + self.topArrayNewFivePosition.y)
                                        
                                        self.topArrayCurrentSixPosition = CGPoint(x:value.translation.width + self.topArrayNewSixPosition.x, y: value.translation.height + self.topArrayNewSixPosition.y)
                                        
                                        self.topArrayCurrentSevenPosition = CGPoint(x:value.translation.width + self.topArrayNewSevenPosition.x, y: value.translation.height + self.topArrayNewSevenPosition.y)
                                        
                                        self.topArrayCurrentEightPosition = CGPoint(x:value.translation.width + self.topArrayNewEightPosition.x, y: value.translation.height + self.topArrayNewEightPosition.y)
                                        
                                        
        
                                        
                                            //Bottom Array Coordinates
                                        self.imageArrayCurrentOnePosition = CGPoint(x:value.translation.width + self.imageArrayNewOnePosition.x, y: value.translation.height + self.imageArrayNewOnePosition.y)
                                                                        
                                        self.imageArrayCurrentTwoPosition = CGPoint(x:value.translation.width + self.imageArrayNewTwoPosition.x, y: value.translation.height + self.imageArrayNewTwoPosition.y)
                                        
                                        self.imageArrayCurrentThreePosition = CGPoint(x:value.translation.width + self.imageArrayNewThreePosition.x, y: value.translation.height + self.imageArrayNewThreePosition.y)
                                        
                                        self.imageArrayCurrentFourPosition = CGPoint(x:value.translation.width + self.imageArrayNewFourPosition.x, y: value.translation.height + self.imageArrayNewFourPosition.y)
                                        
                                        self.imageArrayCurrentFivePosition = CGPoint(x:value.translation.width + self.imageArrayNewFivePosition.x, y: value.translation.height + self.imageArrayNewFivePosition.y)
                                        
                                        self.imageArrayCurrentSixPosition = CGPoint(x:value.translation.width + self.imageArrayNewSixPosition.x, y: value.translation.height + self.imageArrayNewSixPosition.y)
                                        
                                        self.imageArrayCurrentSevenPosition = CGPoint(x:value.translation.width + self.imageArrayNewSevenPosition.x, y: value.translation.height + self.imageArrayNewSevenPosition.y)
                                        
                                        self.imageArrayCurrentEightPosition = CGPoint(x:value.translation.width + self.imageArrayNewEightPosition.x, y: value.translation.height + self.imageArrayNewEightPosition.y)
                                        
                                        
                                        //Bonus Coordinates - Current position
                                        self.bonusPointOneCurrentPoistion = CGPoint(x:value.translation.width + self.bonusPointOneNewPosition.x, y:value.translation.height + self.bonusPointOneNewPosition.y)
                                        
                                        self.bonusPointTwoCurrentPoistion = CGPoint(x:value.translation.width + self.bonusPointTwoNewPosition.x, y:value.translation.height + self.bonusPointTwoNewPosition.y)
                                        
                                        self.bonusPointThreeCurrentPoistion = CGPoint(x:value.translation.width + self.bonusPointThreeNewPosition.x, y:value.translation.height + self.bonusPointThreeNewPosition.y)
                                        
                                        self.bonusPointFourCurrentPoistion = CGPoint(x:value.translation.width + self.bonusPointFourNewPosition.x, y:value.translation.height + self.bonusPointFourNewPosition.y)
                                        
                                        self.bonusPointFiveCurrentPoistion = CGPoint(x:value.translation.width + self.bonusPointFiveNewPosition.x, y:value.translation.height + self.bonusPointFiveNewPosition.y)
                                        
                                        self.bonusPointSixCurrentPoistion = CGPoint(x:value.translation.width + self.bonusPointSixNewPosition.x, y:value.translation.height + self.bonusPointSixNewPosition.y)
                                        
                                        self.bonusPointSevenCurrentPoistion = CGPoint(x:value.translation.width + self.bonusPointSevenNewPosition.x, y:value.translation.height + self.bonusPointSevenNewPosition.y)
                                        
                                            
                                        
                                        
                                        //Bee Killer
                                        if (self.beeCurrentPosition.x  >= -140 && self.beeCurrentPosition.x <= -100) && (self.beeCurrentPosition.y >= 320 &&
                                            self.beeCurrentPosition.y <= 350) {
                                            
                                            self.beeHasBeenPoisened = true
                                            
                                            if self.beeHasBeenPoisened {
                                                
                                                self.beeHealthCounter = 0 //Health is now zero
                                                self.playerScore = 0
                                                
                                                //Play Bethany's sound
                                                
                                                playAudioFiles(sound: "Danger", type: "mp3")
                                                
                                                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                                                    playAudioFiles(sound: "Bethany OH NO", type: "mp3")
                            
                                                   
                                                }
                                                

                                                
                                            }
                                        
                                        }//End of Bee notification
                                        
                                        
                                        
                                        
                                        //Top Bee Killer Coordinates
                                        
                                        //Bee Killer poistion one
                                        if (self.topArrayCurrentOnePosition.x >= -184 && self.topArrayCurrentOnePosition.x <= -165 ) && (self.topArrayCurrentOnePosition.y >= -113 && self.topArrayCurrentFourPosition.y <= -80) && self.topImageObstacle[0].contains("BeeKiller") && self.beeKillerBonusPointOneTopState != true {
                                            
                                            playAudioFiles(sound: "Danger", type: "mp3")
                                            
                                            self.beeKillerBonusPointOneTopState = true
                                                
                                            if self.beeKillerBonusPointOneTopState {
                                                
                                                self.finalScores -= 20
                                                
                                                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                                                    
                                                    ReadSynthWord(word: "20 bonus points deducted")
                                                    self.beeKillerBonusPointOneTopState.toggle()
                                                }
                                            }
                                            
                
                                        
                                            //Bee Killer Position Two
                                        } else if (self.topArrayCurrentTwoPosition.x >= -136 && self.topArrayCurrentTwoPosition.x <= -123) && (self.topArrayCurrentTwoPosition.y >= -113 && self.topArrayCurrentTwoPosition.y <= -80) && self.topImageObstacle[1].contains("BeeKiller") && self.beeKillerBonusPointTwoTopState != true {
                                            
                                            playAudioFiles(sound: "Danger", type: "mp3")
                                            
                                            //Bonus point deduction
                                            self.beeKillerBonusPointTwoTopState = true
                                            
                                            if self.beeKillerBonusPointTwoTopState {
                                                
                                                self.finalScores -= 20
                                                
                                                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                                                    
                                                    ReadSynthWord(word: "20 bonus points deducted")
                                                    self.beeKillerBonusPointTwoTopState.toggle()
                                                }
                                                
                                            }
                                            
                                            
                                            
                                                                                       
                                        } else if (self.topArrayCurrentThreePosition.x >= -85 && self.topArrayCurrentThreePosition.x <= -71) && (self.topArrayCurrentThreePosition.y >= -113 && self.topArrayCurrentThreePosition.y <= -80) && self.topImageObstacle[2].contains("BeeKiller") && self.beeKillerBonusPointThreeTopState != true {
                                        
                                            playAudioFiles(sound: "Danger", type: "mp3")
                                            
                                            //Bonus point deduction
                                            self.beeKillerBonusPointThreeTopState = true
                                            
                                            if self.beeKillerBonusPointThreeTopState {
                                                
                                                self.finalScores -= 20
                                                
                                                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                                                    
                                                    ReadSynthWord(word: "20 bonus points deducted")
                                                    self.beeKillerBonusPointThreeTopState.toggle()
                                                }
                                                
                                            }
                                            
                
                                        
                                        } else if (self.topArrayCurrentFourPosition.x >= -35 && self.topArrayCurrentFourPosition.x <= -26) && (self.topArrayCurrentFourPosition.y >= -113 && self.topArrayCurrentFourPosition.y <= -80) && self.topImageObstacle[3].contains("BeeKiller") && self.beeKillerBonusPointFourTopState != true {
                                        
                                                playAudioFiles(sound: "Danger", type: "mp3")
                                            
                                            //Bonus point deduction
                                            self.beeKillerBonusPointFourTopState = true
                                            
                                            if self.beeKillerBonusPointFourTopState {
                                                
                                                self.finalScores -= 20
                                                
                                                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                                                    
                                                    ReadSynthWord(word: "20 bonus points deducted")
                                                    self.beeKillerBonusPointFourTopState.toggle()
                                                }
                                                
                                            }
                        
                                        
                                        } else if (self.topArrayCurrentFivePosition.x >= 15 && self.topArrayCurrentFivePosition.x <= 27) && (self.topArrayCurrentFivePosition.y >= -113 && self.topArrayCurrentFivePosition.y <= -80) && self.topImageObstacle[4].contains("BeeKiller") && self.beeKillerBonusPointFiveTopState != true {
                                        
                                            playAudioFiles(sound: "Danger", type: "mp3")
                                            
                                            //Deduct 20 bonus points
                                            self.beeKillerBonusPointFiveTopState = true
                                            
                                            if self.beeKillerBonusPointFiveTopState {
                                                
                                                self.finalScores -= 20
                                                
                                                DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                                                    
                                                    ReadSynthWord(word: "20 bonus point deducted")
                                                    self.beeKillerBonusPointFiveTopState.toggle()
                                                
                                                }
                                            }
                                        
                                        } else if (self.topArrayCurrentSixPosition.x >= 59 && self.topArrayCurrentSixPosition.x <= 66) && (self.topArrayCurrentSixPosition.y >= -113 && self.topArrayCurrentSixPosition.y <= -80) && self.topImageObstacle[5].contains("BeeKiller") && self.beeKillerBonusPointSixTopState != true {
                                        
                                            playAudioFiles(sound: "Danger", type: "mp3")
                                            
                                            //Bonus point deduction
                                            self.beeKillerBonusPointSixTopState = true
                                            
                                            if self.beeKillerBonusPointSixTopState {
                                                
                                                self.finalScores -= 20
                                                
                                                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                                                    
                                                    ReadSynthWord(word: "20 bonus points deducted")
                                                    self.beeKillerBonusPointSixTopState.toggle()
                                                }
                                                
                                            }
                                            
                                   
                                        
                                        } else if (self.topArrayCurrentSevenPosition.x >= 107 && self.topArrayCurrentSevenPosition.x <= 116) && (self.topArrayCurrentSevenPosition.y >= -113 && self.topArrayCurrentSevenPosition.y <= -80) && self.topImageObstacle[6].contains("BeeKiller") && self.beeKillerBonusPointSevenTopState != true {
                                        
                                                playAudioFiles(sound: "Danger", type: "mp3")
                                            
                                              //Bonus point deduction
                                              self.beeKillerBonusPointSevenTopState = true
                                              
                                              if self.beeKillerBonusPointSevenTopState {
                                                  
                                                  self.finalScores -= 20
                                                  
                                                  DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                                                      
                                                      ReadSynthWord(word: "20 bonus points deducted")
                                                      self.beeKillerBonusPointSevenTopState.toggle()
                                                  }
                                                  
                                              }
                                        
                                        } else if (self.topArrayCurrentEightPosition.x >= 159 && self.topArrayCurrentEightPosition.x <= 169) && (self.topArrayCurrentEightPosition.y >= -113 && self.topArrayCurrentEightPosition.y <= -80) && self.topImageObstacle[7].contains("BeeKiller") && self.beeKillerBonusPointEightTopState != true {
                                        
                                                playAudioFiles(sound: "Danger", type: "mp3")
                                            
                                            //Bonus point deduction
                                            self.beeKillerBonusPointEightTopState = true
                                            
                                            if self.beeKillerBonusPointEightTopState {
                                                
                                                self.finalScores -= 20
                                                
                                                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                                                    
                                                    ReadSynthWord(word: "20 bonus points deducted")
                                                    self.beeKillerBonusPointEightTopState.toggle()
                                                }
                                                
                                            }
                                            
                                      
                                        
                                        }
                                        
                                        
                                        //Bonus points Top
                                        if (self.topArrayCurrentOnePosition.x >= -184 && self.topArrayCurrentOnePosition.x <= -165 ) && (self.topArrayCurrentOnePosition.y >= -113 && self.topArrayCurrentFourPosition.y <= -80) && self.topImageObstacle[0].contains("Honeycomb") && self.honeycombBonusPointOneTopState != true {
                                            
                                            self.honeycombBonusPointOneTopState = true
                                            
                                            if self.honeycombBonusPointOneTopState {
                                            self.finalScores += 20
                                            ReadSynthWord(word: "20 bonus points added")
                                            
                                            }
                                        } else if (self.topArrayCurrentTwoPosition.x >= -136 && self.topArrayCurrentTwoPosition.x <= -123) && (self.topArrayCurrentTwoPosition.y >= -113 && self.topArrayCurrentTwoPosition.y <= -80) && self.topImageObstacle[1].contains("Honeycomb") && self.honeycombBonusPointTwoTopState != true {
                                            
                                            self.honeycombBonusPointTwoTopState = true
                                            
                                            if self.honeycombBonusPointTwoTopState {
                                            self.finalScores += 20
                                            ReadSynthWord(word: "20 bonus points added")
                                            
                                            }
                                            
                                            
                                        } else if (self.topArrayCurrentThreePosition.x >= -85 && self.topArrayCurrentThreePosition.x <= -71) && (self.topArrayCurrentThreePosition.y >= -113 && self.topArrayCurrentThreePosition.y <= -80) && self.topImageObstacle[2].contains("Honeycomb") && self.honeycombBonusPointThreeTopState != true {
                                            
                                            self.honeycombBonusPointThreeTopState = true
                                            
                                            if self.honeycombBonusPointThreeTopState {
                                                
                                                self.finalScores += 20
                                                ReadSynthWord(word: "20 bonus points added")
                                                
                                                
                                            }
                                            
                                        } else if (self.topArrayCurrentFourPosition.x >= -35 && self.topArrayCurrentFourPosition.x <= -26) && (self.topArrayCurrentFourPosition.y >= -113 && self.topArrayCurrentFourPosition.y <= -80) && self.topImageObstacle[3].contains("Honeycomb") && self.honeycombBonusPointFourTopState != true {
                                            
                                            
                                            self.honeycombBonusPointFourTopState = true
                                            
                                            if self.honeycombBonusPointFourTopState {
                                                
                                                self.finalScores += 20
                                                ReadSynthWord(word: "20 bonus points added")
                                            }
                                            
                                            
                                        } else if (self.topArrayCurrentFivePosition.x >= 15 && self.topArrayCurrentFivePosition.x <= 27) && (self.topArrayCurrentFivePosition.y >= -113 && self.topArrayCurrentFivePosition.y <= -80) && self.topImageObstacle[4].contains("Honeycomb") && self.honeycombBonusPointFiveTopState != true {
                                            
                                            self.honeycombBonusPointFiveTopState = true
                                            
                                            if self.honeycombBonusPointFiveTopState {
                                            
                                            self.finalScores += 20
                                            ReadSynthWord(word: "20 bonus points added")
                                            }
                                            
                                        } else if (self.topArrayCurrentSixPosition.x >= 59 && self.topArrayCurrentSixPosition.x <= 66) && (self.topArrayCurrentSixPosition.y >= -113 && self.topArrayCurrentSixPosition.y <= -80) && self.topImageObstacle[5].contains("Honeycomb") && self.honeycombBonusPointSixTopState != true {
                                            
                                            
                                            self.honeycombBonusPointSixTopState = true
                                            
                                            if self.honeycombBonusPointSixTopState {
                                                
                                                self.finalScores += 20
                                                ReadSynthWord(word: "20 bonus points added")
                                                
                                            }
                                            
                                            
                                        } else if (self.topArrayCurrentSevenPosition.x >= 107 && self.topArrayCurrentSevenPosition.x <= 116) && (self.topArrayCurrentSevenPosition.y >= -113 && self.topArrayCurrentSevenPosition.y <= -80) && self.topImageObstacle[6].contains("Honeycomb") && self.honeycombBonusPointSevenTopState != true {
                                            
                                            
                                            self.honeycombBonusPointSevenTopState = true
                                            
                                            if self.honeycombBonusPointSevenTopState {
                                                
                                                self.finalScores += 20
                                                ReadSynthWord(word: "20 bonus points added")
                                                
                                            }
                                            
                                            
                                            
                                        } else if (self.topArrayCurrentEightPosition.x >= 159 && self.topArrayCurrentEightPosition.x <= 169) && (self.topArrayCurrentEightPosition.y >= -113 && self.topArrayCurrentEightPosition.y <= -80) && self.topImageObstacle[7].contains("Honeycomb") && self.honeycombBonusPointEightTopState != true {
                                            
                                            self.honeycombBonusPointEightTopState = true
                                            
                                            if self.honeycombBonusPointEightTopState {
                                                
                                                self.finalScores += 20
                                                ReadSynthWord(word: "20 bonus points added")
                                                
                                            }
                                            
                                        }
                                        
                                        
                                        
                                        
                                        //Bottom Bee Killer conditions
                                        if (self.imageArrayCurrentOnePosition.x >= -184 && self.imageArrayCurrentOnePosition.x  <= -165) && (self.imageArrayCurrentOnePosition.y >= 129 && self.imageArrayCurrentOnePosition.y <= 155) && self.BottomimageObstacle[0].contains("BeeKiller") && self.beeKillerBonusPointOneBottomState != true {
                                            
                                            playAudioFiles(sound: "Danger", type: "mp3")
                                            
                                            //Bonus point deduction
                                            self.beeKillerBonusPointOneBottomState = true
                                            
                                            if self.beeKillerBonusPointOneBottomState {
                                                
                                                self.finalScores -= 20
                                                
                                                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                                                    
                                                    ReadSynthWord(word: "20 bonus points deducted")
                                                    self.beeKillerBonusPointOneBottomState.toggle()
                                                }
                                                
                                            }
                                      
                                        
                                        
                                        } else if (self.imageArrayCurrentTwoPosition.x >= -136 && self.imageArrayCurrentTwoPosition.x <= -123) && (self.imageArrayCurrentTwoPosition.y >= 129 && self.imageArrayCurrentTwoPosition.y <= 155) && self.BottomimageObstacle[1].contains("BeeKiller") && self.beeKillerBonusPointTwoBottomState != true {
                                            
                                            playAudioFiles(sound: "Danger", type: "mp3")
                                            
                                            //Bonus point deduction
                                            self.beeKillerBonusPointTwoBottomState = true
                                            
                                            if self.beeKillerBonusPointTwoBottomState {
                                                
                                                self.finalScores -= 20
                                                
                                                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                                                    
                                                    ReadSynthWord(word: "20 bonus points deducted")
                                                    self.beeKillerBonusPointTwoBottomState.toggle()
                                                }
                                                
                                            }
                                            
                                      
                                            
                                        } else if (self.imageArrayCurrentThreePosition.x >= -85 && self.imageArrayCurrentThreePosition.x <= -71) && (self.imageArrayCurrentThreePosition.y >= 129 && self.imageArrayCurrentThreePosition.y <= 155) && self.BottomimageObstacle[2].contains("BeeKiller") && self.beeKillerBonusPointThreeBottomState != true {
                                        
                                            playAudioFiles(sound: "Danger", type: "mp3")
                                            
                                            //Bonus point deduction
                                            self.beeKillerBonusPointThreeBottomState = true
                                            
                                            if self.beeKillerBonusPointThreeBottomState {
                                                
                                                self.finalScores -= 20
                                                
                                                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                                                    
                                                    ReadSynthWord(word: "20 bonus points deducted")
                                                    self.beeKillerBonusPointThreeBottomState.toggle()
                                                }
                                                
                                            }
                                            
                                
                                        
                                        } else if (self.imageArrayCurrentFourPosition.x >= -35 && self.imageArrayCurrentFourPosition.x <= -26) && (self.imageArrayCurrentFourPosition.y >= 129 && self.imageArrayCurrentFourPosition.y <= 155) && self.BottomimageObstacle[3].contains("BeeKiller") && self.beeKillerBonusPointFourBottomState != true {
                                        
                                            playAudioFiles(sound: "Danger", type: "mp3")
                                            
                                            //Bonus point deduction
                                            self.beeKillerBonusPointFourBottomState = true
                                            
                                            if self.beeKillerBonusPointFourBottomState {
                                                
                                                self.finalScores -= 20
                                                
                                                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                                                    
                                                    ReadSynthWord(word: "20 bonus points deducted")
                                                    self.beeKillerBonusPointFourBottomState.toggle()
                                                }
                                                
                                            }
                                        
                                        } else if (self.imageArrayCurrentFivePosition.x >= 15 && self.imageArrayCurrentFivePosition.x <= 27) && (self.imageArrayCurrentFivePosition.y >= 129 && self.imageArrayCurrentFivePosition.y <= 155) && self.BottomimageObstacle[4].contains("BeeKiller") && self.beeKillerBonusPointFiveBottomState != true {
                                        
                                            playAudioFiles(sound: "Danger", type: "mp3")
                                            
                                            //Bonus point deduction
                                            self.beeKillerBonusPointFiveBottomState = true
                                            
                                            if self.beeKillerBonusPointFiveBottomState {
                                                
                                                self.finalScores -= 20
                                                
                                                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                                                    
                                                    ReadSynthWord(word: "20 bonus points deducted")
                                                    self.beeKillerBonusPointFiveBottomState.toggle()
                                                }
                                                
                                            }
                                            
                                         
                                        
                                        } else if (self.imageArrayCurrentSixPosition.x >= 59 && self.imageArrayCurrentSixPosition.x <= 66) && (self.imageArrayCurrentSixPosition.y >= 129 && self.imageArrayCurrentSixPosition.y <= 155) && self.BottomimageObstacle[5].contains("BeeKiller") && self.beeKillerBonusPointSixBottomState != true {
                                        
                                                playAudioFiles(sound: "Danger", type: "mp3")
                                            
                                            //Bonus point deduction
                                            self.beeKillerBonusPointSixBottomState = true
                                            
                                            if self.beeKillerBonusPointSixBottomState {
                                                
                                                self.finalScores -= 20
                                                
                                                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                                                    
                                                    ReadSynthWord(word: "20 bonus points deducted")
                                                    self.beeKillerBonusPointSixBottomState.toggle()
                                                }
                                                
                                            }
                                            
                                      
                                        
                                        } else if (self.imageArrayCurrentSevenPosition.x >= 107 && self.imageArrayCurrentSevenPosition.x <= 116) && (self.imageArrayCurrentSevenPosition.y >= 129 && self.imageArrayCurrentSevenPosition.y <= 155) && self.BottomimageObstacle[6].contains("BeeKiller") && self.beeKillerBonusPointSevenBottomState != true {
                                        
                                                playAudioFiles(sound: "Danger", type: "mp3")
                                            
                                            //Bonus point deduction
                                            self.beeKillerBonusPointSevenBottomState = true
                                            
                                            if self.beeKillerBonusPointSevenBottomState {
                                                
                                                self.finalScores -= 20
                                                
                                                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                                                    
                                                    ReadSynthWord(word: "20 bonus points deducted")
                                                    self.beeKillerBonusPointSevenBottomState.toggle()
                                                }
                                                
                                            }
                                            
                                
                                        
                                        } else if (self.imageArrayCurrentEightPosition.x >= 159 && self.imageArrayCurrentEightPosition.x <= 169) && (self.imageArrayCurrentEightPosition.y >= 129 && self.imageArrayCurrentEightPosition.y <= 155) && self.BottomimageObstacle[7].contains("BeeKiller") && self.beeKillerBonusPointEightBottomState != true {
                                        
                                            playAudioFiles(sound: "Danger", type: "mp3")
                                            
                                            //Bonus point deduction
                                            self.beeKillerBonusPointEightBottomState = true
                                            
                                            if self.beeKillerBonusPointEightBottomState {
                                                
                                                self.finalScores -= 20
                                                
                                                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                                                    
                                                    ReadSynthWord(word: "20 bonus points deducted")
                                                    self.beeKillerBonusPointEightBottomState.toggle()
                                                }
                                                
                                            }
                                            
                                      
                                        
                                        }
                                        
                                        
                                        
                                        
                                        //Honeycomb Bottom
                                        
                                        if (self.imageArrayCurrentOnePosition.x >= -184 && self.imageArrayCurrentOnePosition.x  <= -165) && (self.imageArrayCurrentOnePosition.y >= 129 && self.imageArrayCurrentOnePosition.y <= 155) && self.BottomimageObstacle[0].contains("Honeycom") && self.HoneycombBonusPointOneBottomState != true {
                                            
                                            self.HoneycombBonusPointOneBottomState = true
                                            
                                            if self.HoneycombBonusPointOneBottomState {
                                                
                                                self.finalScores += 20
                                                ReadSynthWord(word: "20 bonus points added")
                                                
                                                
                                            }
                                            
                                        } else if (self.imageArrayCurrentTwoPosition.x >= -136 && self.imageArrayCurrentTwoPosition.x <= -123) && (self.imageArrayCurrentTwoPosition.y >= 129 && self.imageArrayCurrentTwoPosition.y <= 155) && self.BottomimageObstacle[1].contains("Honeycomb") && self.HoneycombBonusPointTwoBottomState != true {
                                            
                                            self.HoneycombBonusPointTwoBottomState = true
                                            
                                            if self.HoneycombBonusPointTwoBottomState {
                                                
                                                self.finalScores += 20
                                                ReadSynthWord(word: "20 bonus points added")
                                            }
                                            
                                        } else if (self.imageArrayCurrentThreePosition.x >= -85 && self.imageArrayCurrentThreePosition.x <= -71) && (self.imageArrayCurrentThreePosition.y >= 129 && self.imageArrayCurrentThreePosition.y <= 155) && self.BottomimageObstacle[2].contains("Honeycomb") && self.HoneycombBonusPointThreeBottomState != true {
                                            
                                            self.HoneycombBonusPointThreeBottomState = true
                                            
                                            if self.HoneycombBonusPointThreeBottomState {
                                                
                                                self.finalScores += 20
                                                ReadSynthWord(word: "20 bonus points added")
                                                
                                            }
                                            
                                        } else if (self.imageArrayCurrentFourPosition.x >= -35 && self.imageArrayCurrentFourPosition.x <= -26) && (self.imageArrayCurrentFourPosition.y >= 129 && self.imageArrayCurrentFourPosition.y <= 155) && self.BottomimageObstacle[3].contains("Honeycomb") && self.HoneycombBonusPointFourBottomState != true {
                                            
                                            self.HoneycombBonusPointFourBottomState = true
                                            
                                            if self.HoneycombBonusPointFourBottomState {
                                                
                                                self.finalScores += 20
                                                ReadSynthWord(word: "20 bonus points added")
                                                
                                            }
                                            
                                        } else if (self.imageArrayCurrentFivePosition.x >= 15 && self.imageArrayCurrentFivePosition.x <= 27) && (self.imageArrayCurrentFivePosition.y >= 129 && self.imageArrayCurrentFivePosition.y <= 155) && self.BottomimageObstacle[4].contains("Honeycomb") && self.HoneycombBonusPointFiveBottomState != true {
                                            
                                                self.HoneycombBonusPointFiveBottomState = true
                                            
                                            if self.HoneycombBonusPointFiveBottomState {
                                                
                                                self.finalScores += 20
                                                ReadSynthWord(word: "20 bonus points added")
                                                
                                            }
                                            
                                        } else if (self.imageArrayCurrentSixPosition.x >= 59 && self.imageArrayCurrentSixPosition.x <= 66) && (self.imageArrayCurrentSixPosition.y >= 129 && self.imageArrayCurrentSixPosition.y <= 155) && self.BottomimageObstacle[5].contains("Honeycomb") && self.HoneycombBonusPointSixBottomState != true {
                                            
                                            self.HoneycombBonusPointSixBottomState = true
                                            
                                            if self.HoneycombBonusPointSixBottomState {
                                                
                                                self.finalScores += 20
                                                ReadSynthWord(word: "20 bonus points added")
                                                
                                            }
                                            
                                        } else if (self.imageArrayCurrentSevenPosition.x >= 107 && self.imageArrayCurrentSevenPosition.x <= 116) && (self.imageArrayCurrentSevenPosition.y >= 129 && self.imageArrayCurrentSevenPosition.y <= 155) && self.BottomimageObstacle[6].contains("Honeycomb") && self.HoneycombBonusPointSevenBottomState != true {
                                            
                                            self.HoneycombBonusPointSevenBottomState = true
                                            
                                            if self.HoneycombBonusPointSevenBottomState {
                                                
                                                self.finalScores += 20
                                                ReadSynthWord(word: "20 bonus points added")
                                                
                                            }
                                            
                                        } else if (self.imageArrayCurrentEightPosition.x >= 159 && self.imageArrayCurrentEightPosition.x <= 169) && (self.imageArrayCurrentEightPosition.y >= 129 && self.imageArrayCurrentEightPosition.y <= 155) && self.BottomimageObstacle[7].contains("Honeycomb") && self.HoneycombBonusPointEightBottomState != true {
                                            
                                            self.HoneycombBonusPointEightBottomState = true
                                            
                                            if self.HoneycombBonusPointEightBottomState {
                                                
                                                self.finalScores += 20
                                                ReadSynthWord(word: "20 bonus points added")
                                                
                                            }
                                        }
                                        
                                        
                                        
                                       
                                        
                                           
                                       }//End onChanged
                                       
                                       .onEnded { value in
                                        
                                        self.beeCurrentPosition = CGPoint(x:value.translation.width + self.beeNewPosition.x, y:value.translation.height + self.beeNewPosition.y)
                                         //Betty arrives home
                                        //Betty arrives home
                                       if (self.beeCurrentPosition.x >= -3 && self.beeCurrentPosition.x <= 3) && (self.beeCurrentPosition.y >= -3 && self.beeCurrentPosition.y <= 3) && (self.beeHealthCounter > 0) {
                                          
                                          //Set play game status
                                          self.gamePlayStatus = false
                                          
                                          playAudioFiles(sound: "Betty_Arrives_Home", type: "mp3")
                                       }
                                        self.beeNewPosition = self.beeCurrentPosition
                                        
                                        
                                        
                                        //Top Array Coordinates
                                        self.topArrayCurrentOnePosition = CGPoint(x:value.translation.width + self.topArrayNewOnePosition.x, y: value.translation.height + self.topArrayNewOnePosition.y)
                                        self.topArrayNewOnePosition = self.topArrayCurrentOnePosition
                                        
                                        self.topArrayCurrentTwoPosition = CGPoint(x:value.translation.width + self.topArrayNewTwoPosition.x, y: value.translation.height + self.topArrayNewTwoPosition.y)
                                        self.topArrayNewTwoPosition = self.topArrayCurrentTwoPosition
                                        
                                        self.topArrayCurrentThreePosition = CGPoint(x:value.translation.width + self.topArrayNewThreePosition.x, y: value.translation.height + self.topArrayNewThreePosition.y)
                                        self.topArrayNewThreePosition = self.topArrayCurrentThreePosition
                                        
                                        self.topArrayCurrentFourPosition = CGPoint(x:value.translation.width + self.topArrayNewFourPosition.x, y: value.translation.height + self.topArrayNewFourPosition.y)
                                        self.topArrayNewFourPosition = self.topArrayCurrentFourPosition
                                        
                                        self.topArrayCurrentFivePosition = CGPoint(x:value.translation.width + self.topArrayNewFivePosition.x, y: value.translation.height + self.topArrayNewFivePosition.y)
                                        self.topArrayNewFivePosition = self.topArrayCurrentFivePosition
                                        
                                        self.topArrayCurrentSixPosition = CGPoint(x:value.translation.width + self.topArrayNewSixPosition.x, y: value.translation.height + self.topArrayNewSixPosition.y)
                                        self.topArrayNewSixPosition = self.topArrayCurrentSixPosition
                                        
                                        self.topArrayCurrentSevenPosition = CGPoint(x:value.translation.width + self.topArrayNewSevenPosition.x, y: value.translation.height + self.topArrayNewSevenPosition.y)
                                        self.topArrayNewSevenPosition = self.topArrayCurrentSevenPosition
                                        
                                        self.topArrayCurrentEightPosition = CGPoint(x:value.translation.width + self.topArrayNewEightPosition.x, y: value.translation.height + self.topArrayNewEightPosition.y)
                                        self.topArrayNewEightPosition = self.topArrayCurrentEightPosition
                                        
                                           
                                           
                                        
                                        
                                        //Image One Ended Coordinates
                                        self.imageArrayCurrentOnePosition = CGPoint(x:value.translation.width + self.imageArrayNewOnePosition.x, y: value.translation.height + self.imageArrayNewOnePosition.y)
                                        self.imageArrayNewOnePosition = self.imageArrayCurrentOnePosition
                                        
                                        
                                        //Image Two Ended Coordinates
                                        self.imageArrayCurrentTwoPosition = CGPoint(x:value.translation.width + self.imageArrayNewTwoPosition.x, y: value.translation.height + self.imageArrayNewTwoPosition.y)
                                        self.imageArrayNewTwoPosition = self.imageArrayCurrentTwoPosition
                                        
                                        
                                        //Image Three Ended Coordinates
                                        self.imageArrayCurrentThreePosition = CGPoint(x:value.translation.width + self.imageArrayNewThreePosition.x, y: value.translation.height + self.imageArrayNewThreePosition.y)
                                        self.imageArrayNewThreePosition = self.imageArrayCurrentThreePosition
                                        
                                        //Image Four Ended Coordinates
                                        self.imageArrayCurrentFourPosition = CGPoint(x:value.translation.width + self.imageArrayNewFourPosition.x, y: value.translation.height + self.imageArrayNewFourPosition.y)
                                        self.imageArrayNewFourPosition = self.imageArrayCurrentFourPosition
                                        
                                        //Image Five Ended Coordinates
                                        self.imageArrayCurrentFivePosition = CGPoint(x:value.translation.width + self.imageArrayNewFivePosition.x, y: value.translation.height + self.imageArrayNewFivePosition.y)
                                        self.imageArrayNewFivePosition = self.imageArrayCurrentFivePosition
                                        
                                        
                                        //Image Six Ended Coordinates
                                        self.imageArrayCurrentSixPosition = CGPoint(x:value.translation.width + self.imageArrayNewSixPosition.x, y: value.translation.height + self.imageArrayNewSixPosition.y)
                                        self.imageArrayNewSixPosition = self.imageArrayCurrentSixPosition
                                        
                                        
                                        //Image Seven Ended Coordinates
                                        self.imageArrayCurrentSevenPosition = CGPoint(x:value.translation.width + self.imageArrayNewSevenPosition.x, y: value.translation.height + self.imageArrayNewSevenPosition.y)
                                        self.imageArrayNewSevenPosition = self.imageArrayCurrentSevenPosition
                                        
                                        //Image Eight Ended Coordinates
                                        self.imageArrayCurrentEightPosition = CGPoint(x:value.translation.width + self.imageArrayNewEightPosition.x, y: value.translation.height + self.imageArrayNewEightPosition.y)
                                        self.imageArrayNewEightPosition = self.imageArrayCurrentEightPosition
                                        
                                        
                                        
                                        
                                           
                                           //Track Bee co-ordinates
                                           self.getBeeXPosition = Int(self.beeNewPosition.x)
                                           self.getBeeYPosition = Int(self.beeNewPosition.y)
                                  
                                        
                                       
                                        
                                        //Jar Power
                                        if (self.beeCurrentPosition.x >= 75 && self.beeCurrentPosition.x <= 85) && (self.beeCurrentPosition.y >= 319 && self.beeCurrentPosition.y <= 335) && self.beeHealthCounter > 0 {
                                            
                                            //Set Jar state to true
                                            self.beeLandsOnHoneyJar = true
                                            
                                            if self.beeLandsOnHoneyJar {
                                                playAudioFiles(sound: "BettyLandsOnJar", type: "mp3")
                                                self.beeCurrentPosition = CGPoint(x: 0.0, y: 0.0)
                                                
                                                //Updating the Status field
                                                self.getBeeXPosition = Int(self.beeCurrentPosition.x)
                                                self.getBeeYPosition = Int(self.beeCurrentPosition.y)
                                                
                                                //Resetting timer values to zero
                                                self.timeRemaining = 0
                                                self.obstacleResetTime = 0
                                                self.finalScores += self.playerScore
                                                
                                                DispatchQueue.main.asyncAfter(deadline: .now() + 10) {
                                                    
                                                    ReadSynthWord(word: "Your final score is \(self.finalScores)")
                                                }
                                                
                                                DispatchQueue.main.asyncAfter(deadline: .now() + 18) {
                                                    
                                                    playAudioFiles(sound: "Betty_Arrives_Home", type: "mp3")
                                                    
                                                }
                                                
                                                //Pause Music
                                                DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                                                    
                                                    pauseMusic()
                                                }
                                               
                                                
                                            }
                                            
                                           
                                        }
                                        
                                        
                                        
                                           
                                       }//End of onEnded
                                    
                               
                               ).animation(.spring())
                            
                          
                            //First Row of Home Image
                            
                            VStack {
                                
                                
                                
                            HStack(spacing:20) {
                                
                                GameImageV2(imageName: "HomeFlower1", imageWidth: 50, imageHeight: 30)
                                GameImageV2(imageName: "HomeFlower2", imageWidth: 10, imageHeight: 60)
                                GameImageV2(imageName: "HomeFlower3", imageWidth: 30, imageHeight: 60)
                                
                            }
                            
                            HStack(spacing:60) {
                                                           
                               GameImageV2(imageName: "HomeFlower6", imageWidth: 60, imageHeight: 60)
                               GameImageV2(imageName: "HomeFlower4", imageWidth: 40, imageHeight: 60)
                               GameImageV2(imageName: "HomeFlower5", imageWidth: 30, imageHeight: 60)
                               
                           }
                                
                                HStack(spacing:20) {
                                                               
                                   GameImageV2(imageName: "HomeFlower3", imageWidth: 60, imageHeight: 30)
                                   GameImageV2(imageName: "HomeFlower2", imageWidth: 10, imageHeight: 60)
                                   GameImageV2(imageName: "HomeFlower1", imageWidth: 60, imageHeight: 30)
                                   
                               }
                       
                                
                                
                                
                                
                      
                            }//Home Vstack End
 

                       
                        }
                                 
                          
                               }
                    
                   
                   }
               
               
               
               }
        
        }
        
        
 

}


