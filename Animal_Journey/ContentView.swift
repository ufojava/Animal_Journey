//
//  ContentView.swift
//  Animal_Journey
//
//  Created by Ufuoma Okoro on 11/03/2020.
//  Copyright © 2020 Ufuoma Okoro. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
 
    
    
    var body: some View {
        
        
        
        
        NavigationView {
            VStack {
                
                ZStack {
            
            //Image background
            Image("BettyWorldBackGrd")
                .resizable()
                .scaledToFill()
            .edgesIgnoringSafeArea(.all)
                
                
                NavigationLink(destination: Bee()) {
                    VStack {
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
                }
                }
                }
            }
    
                .navigationBarTitle("Home 🏚")
        }
        }
            
    }
 


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
