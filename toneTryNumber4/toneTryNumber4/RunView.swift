//
//  RunView.swift
//  toneTryNumber4
//
//  Created by Saleh Al Sedrah on 05/09/2022.
//

import SwiftUI


struct Run: Equatable, Encodable, Decodable {
    let name: String
    var distance: String
    var time: Int
}

struct RunView: View {
    var run: Run
    @Binding var runs: [Run]
    
    
    @State var timerStarted: Bool = false
    @State var seconds: Int = 0
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    @Binding var editMode: Bool
    
    var body: some View {
        HStack {
            Text(run.name)
            Spacer()
            Text("\(formattedTime(seconds: run.time + seconds))")
                .onReceive(timer) { _ in
                    if timerStarted {
                        seconds += 1
                    }
                }
            Text("\(run.distance)KM")

            if editMode {
                Button(action: {
                    guard let index = runs.firstIndex(of: run) else { return }
                    runs.remove(at: index)
                }, label: {
                    Image(systemName: "trash")
                })
            }
        }
    }
}
