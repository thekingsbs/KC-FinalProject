//
//  File.swift
//  Tone
//
//  Created by Saleh Al Sedrah on 27/08/2022.
//

import Foundation

struct Workout {
    
    let workoutName: String
    let workoutDurationSecs: Int
    let workoutNotes: String?
    
  /*  let exercise1: String
    let exercise1Desc: String
    let exercise1Sets: Int
    let exercise1Reps: Int
    
    let exercise2: String
    let exercise2Desc: String
    let exercise2Sets: Int
    let exercise2Reps: Int
    
    let exercise3: String
    let exercise3Desc: String
    let exercise3Sets: Int
    let exercise3Reps: Int
    
    let exercise4: String
    let exercise4Desc: String
    let exercise4Sets: Int
    let exercise4Reps: Int
    
    let exercise5: String
    let exercise5Desc: String
    let exercise5Sets: Int
    let exercise5Reps: Int
    
    let exercise6: String
    let exercise6Desc: String
    let exercise6Sets: Int
    let exercise6Reps: Int
    
    */
    let exercise: [Exercise]
}

struct Exercise {
    
    let exercise: String
    let exerciseDesc: String
    let exerciseSets: Int
    let exerciseReps: Int
    
}
