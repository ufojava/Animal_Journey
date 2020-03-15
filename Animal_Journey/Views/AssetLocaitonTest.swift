//
//  AssetLocaitonTest.swift
//  Animal_Journey
//
//  Created by Ufuoma Okoro on 15/03/2020.
//  Copyright © 2020 Ufuoma Okoro. All rights reserved.
//


//Playground to test asset location
import SwiftUI



struct TestBed: View {
    
    
    //@State private var getBeeCurrentPoint: CGPoint = .
    
    @State private var killerPoisonOneX: CGFloat = 0
    @State private var killerPoisonOneY = 0
    
    var imageArray = ["Honeycomb","BeeKiller","Honeycomb","BeeKiller"].shuffled()
   
    
   
    
    var body: some View {
        
     
        
        
            VStack {
        
        Text("Find Betty locaiton")
        
         Image("Bee")
            .resizable()
            .frame(width:50, height: 50)
            .scaledToFill()
            
                .offset()
                //.position()
                
                
                HStack {
                    
                    
                    ForEach(0..<imageArray.count) { element in
                        
                        
                        Image("\(self.imageArray[element])")
                        .resizable()
                            .frame(width:50,height: 50)
                            .scaledToFill()
                        
                        
                    }
                    
                    
                }
            
                
        }
            
        
       
}

}




struct TestBed_Previews: PreviewProvider {
    
    static var previews: some View {
        TestBed()
        
    }
}


