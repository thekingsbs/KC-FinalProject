//
//  test.swift
//  toneTryNumber4
//
//  Created by Saleh Al Sedrah on 10/09/2022.
//

import SwiftUI

struct RunTest: View {

    var run: Run
    @State var timerStarted: Bool = false
    @State var seconds: Int = 0
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        

        VStack {
            
            HStack {
                Text(run.name)
                Spacer()
                                    }
            
            
            
        }
        
    }

    }

