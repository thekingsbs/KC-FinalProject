//
//  ContentView.swift
//  ToneApp
//
//  Created by Saleh Al Sedrah on 01/09/2022.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
      
        
        VStack {
            
            Text("Ready to get TONEd?")
                .font(.system(size: 50, weight: .semibold, design: .default))
                .foregroundColor(.white)
                .padding(.top, 250)
                
        
            Text("One fitness app for all your fitness needs.")
                .font(.system(size: 25, weight: .semibold, design: .default))
                .foregroundColor(.white)
                .padding()
            Spacer()
            
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            
            
            .background(Image("victor-freitas-81_rxuBLmRE-unsplash").resizable()
                            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/).ignoresSafeArea())
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
            .previewDevice("iPhone 12")
    }
}
