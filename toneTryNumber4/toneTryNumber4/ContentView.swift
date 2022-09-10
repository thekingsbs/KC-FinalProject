//
//  ContentView.swift
//  toneTryNumber4
//
//  Created by Saleh Al Sedrah on 05/09/2022.
//

import SwiftUI

struct ContentView: View {
    @State var selectedIndex = 0 
    
    @State var runs: [Run] = []
    
    @State private var addButtonClicked: Bool = false
    
    @State private var editMode: Bool = false
    
    let icons = ["house", "plus", "lasso", "message"]
    
    var body: some View {
      
        VStack {
        ZStack {
            switch selectedIndex {
            case 0:
                NavigationView {
                VStack {
                    Text("s")
                    
                }.navigationTitle("Home")
                }
                
            case 2:
                NavigationView {
                VStack {
                    VStack {
                        if runs.isEmpty {
                            Text("No runs yet.")
                        } else {
                            Form {
                                ForEach(runs, id: \.name) { run in
                                    RunView(run: run, runs: $runs, editMode: $editMode)
                                }
                            }
                        }
                    } .sheet(isPresented: $addButtonClicked, content: {
                        AddRun(runs: $runs, addRunClicked: $addButtonClicked)
                    })
                    .onAppear {
                        runs = loadRuns()
                    }
                    .navigationBarTitle("Run History")
                    .toolbar(content: {
                        Button(action: {
                            editMode.toggle()
                        }, label: {
                            Image(systemName: "pencil")
                        })
                    })
                    
                }.navigationTitle("Run History")
                }
            case 3:
                NavigationView {
                VStack {
                    Text("s")
                    
                }.navigationTitle("settings")
                }
            case 1:
                NavigationView {
                    ZStack {
                       
                        VStack {
                            Button(action: {
                                addButtonClicked.toggle()
                            }, label: {
                                ZStack{
                                    Rectangle().frame(width: 200, height: 100, alignment: .center)
                                        .cornerRadius(25)
                                    VStack {
                                        Text("Go on a run")
                                            .foregroundColor(.white)
                                            .padding()
                                        
                                        
                                    Image(systemName: "plus").foregroundColor(.white).font(.title)
                                }
                                }
                            })
                       
                            
                           
                        
                        }
                    }
                    .sheet(isPresented: $addButtonClicked, content: {
                        AddRun(runs: $runs, addRunClicked: $addButtonClicked)
                    })
                    .onAppear {
                        runs = loadRuns()
                    }
                    .navigationBarTitle("Add New Run")
                    .toolbar(content: {
                        Button(action: {
                            editMode.toggle()
                        }, label: {
                            Image(systemName: "pencil")
                        })
                    })
                }.padding(.bottom, 10)

            case 4:
                NavigationView {
                VStack {
                    Text("s")
                    
                }.navigationTitle("settings")
                }
            default:
                NavigationView {
                    VStack {
                        Text("blob")
                        
                    }.navigationTitle("second")
                    
                }
                
                
            }
        }
        HStack {
            
            ForEach(0..<3, id: \.self) {
                number in
                Spacer()
                Button {
                    self.selectedIndex = number
                } label: {
                    if number == 1 {
                        
                        Image(systemName: icons[number])
                            .font(.system(size: 25, weight: .regular, design: .default))
                            .foregroundColor(selectedIndex == number ? .black :  Color(UIColor.lightGray))
                        
                    } else {
                        
                    
                    
                    Image(systemName: icons[number])
                        .font(.system(size: 25, weight: .regular, design: .default))
                        .foregroundColor(selectedIndex == number ? .black :  Color(UIColor.lightGray))
                    }
                    }
                Spacer()

            }
        }

        
      
        }
    }
    
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

