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
    
    @State var offset: CGSize = .zero
    @State var test = ""
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                
            
                Color.gray
                    .overlay(
                    
                        VStack(alignment: .leading, spacing: 10, content: {
                                
                     
                                    
                                    Text("Ready to get TONEd?")
                                        .font(.system(size: 50, weight: .semibold, design: .default))
                                        .foregroundColor(.white)
                                        .padding(.top, 170)
                                    
                                    
                                    Text("One fitness app for all your fitness needs.")
                                        .font(.system(size: 25, weight: .semibold, design: .default))
                                        .foregroundColor(.white)
                                        .padding()
                                    Spacer()
                                    
                                    
                                    
                                    
                        }).foregroundColor(.white)
                        .padding(.horizontal, 30)
                        .offset(x: 15)
                    
                    )
                    .clipShape(LiquidSwipe(offset: offset))
                    .ignoresSafeArea()
                    .overlay(
                    Image(systemName: "chevron.left")
                        .font(.largeTitle)
                        .frame(width: 50, height: 50)
                        .contentShape(Rectangle())
                        .gesture(DragGesture().onChanged({ (value) in
                            
                            withAnimation(.interactiveSpring(response: 0.7, dampingFraction: 0.6, blendDuration: 0.6)){
                                offset = value.translation
                            }
                            
                        }).onEnded({ (value) in
                            withAnimation(.spring()){
                                offset = .zero
                            }
                        }))
                        .offset(x: 15, y: -30)
            
                        ,alignment: .topTrailing
                    )
                    
                    .padding(.trailing)

                
        
            
            
            
            
            
            
        }
        
            
        }
        
    }
}

struct LiquidSwipe: Shape {
    
    var offset: CGSize
    
    func path(in rect: CGRect) -> Path {
       
        return Path{ path in
            
            
            let width = rect.width + (-offset.width > 0 ? offset.width: 0)
            
            path.move(to: CGPoint(x: 0, y: 0))
            path.addLine(to: CGPoint(x: rect.width, y: 0))
            path.addLine(to: CGPoint(x: rect.width, y: rect.height))
            path.addLine(to: CGPoint(x: 0, y: rect.height))
            
            let from = 80 + (offset.width)
            path.move(to: CGPoint(x: rect.width, y: from > 80 ? 80 : from))
            
            var to = 180 + (offset.height) + (-offset.width)
            to = to < 180 ? 180 : to
            
       
            let mid: CGFloat = 80 + ((to-80) / 2)
 
            path.addCurve(to: CGPoint(x: rect.width, y: to), control1: CGPoint(x: width - 50, y: mid), control2: CGPoint(x: width - 50, y: mid))
            
        }
        
        
    }
    
}
