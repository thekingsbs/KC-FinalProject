//
//  AddRun.swift
//  toneTryNumber4
//
//  Created by Saleh Al Sedrah on 05/09/2022.
//

import SwiftUI

struct AddRun: View {
    
    @Binding var runs: [Run]
    @Binding var addRunClicked: Bool
    
    @State var runName: String = ""
    @State var runDistance: String = ""
    @State var runTime = 0
    
    @State var newTime = 0 
    
    @State var timerStarted: Bool = false
    @State var seconds: Int = 0
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        VStack {
            
            
            Button {
                runs.append(Run(name: runName, distance: runDistance, time: newTime ))
                runs.sort { $0.name < $1.name }
                runName = ""
                saveRuns(runs)
                addRunClicked = false
            } label: {
                Text("End Run")
                    .foregroundColor(.white)
                    .frame(width: 200, height: 50)
                    .background(Color.blue)
                    .cornerRadius(25)

            }.padding(.bottom, 30)
            
            
            TextField("Enter run name", text: $runName)
                .font(.title3)
                .padding()
            
            
            TextField("Enter run distance (in KM)", text: $runDistance)
                        .font(.title3)
                .padding()

            
            
            Button {
                timerStarted.toggle()
                if !timerStarted {
                     newTime = runTime + seconds
                    let name = runName
                    let distance = runDistance
                
            }
            
            
        } label: {
            if timerStarted {
                Image(systemName: "pause")
                    .frame(width: 100, height: 100)
            } else {
                Image(systemName: "play")
                    .frame(width: 100, height: 100)
            }
        }.padding()
           
            
            Text("\(formattedTime(seconds: runTime + seconds))")
                .padding()
                .font(.largeTitle)
                .frame(width: 150, height: 150)
                .foregroundColor(.white)
                .background(Color.blue)
                .cornerRadius(100)
                .onReceive(timer) { _ in
                    if timerStarted {
                        seconds += 1
                    }
                    
            
          
         
           

         
            
            
                    
                
                  
                    
           
       
                    
                    
            
        }
    }
}

}
