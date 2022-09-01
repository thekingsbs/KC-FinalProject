//
//  ContentView.swift
//  ToneApp
//
//  Created by Saleh Al Sedrah on 01/09/2022.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        
        OnBoardingPage()
        
    }
    
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
            .previewDevice("iPhone 12 Pro")
    }
}


struct OnBoardingPage: View {
    
    
    var body: some View {
        
        NavigationView {
            
            
            VStack {
                
                
                
                Text("Ready to get TONEd?")
                    .font(.system(size: 50, weight: .semibold, design: .default))
                    .foregroundColor(.white)
                    .padding(.top, 350)
                
                
                Text("One fitness app for all your fitness needs.")
                    .font(.system(size: 25, weight: .semibold, design: .default))
                    .foregroundColor(.white)
                    .padding()
                Spacer()
                
                
                
                
                
            }.background(Image("andrew-valdivia-ZW_TNzH1KiA-unsplash").resizable().aspectRatio(contentMode: .fill)).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
      
        }
        
    }
}


