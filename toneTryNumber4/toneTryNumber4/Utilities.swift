//
//  Utilities.swift
//  toneTryNumber4
//
//  Created by Saleh Al Sedrah on 05/09/2022.
//

import SwiftUI


private func secondsToHoursMinutesSeconds(seconds: Int) -> (Int, Int, Int) {
    return (seconds / 3600, (seconds % 3600) / 60, (seconds % 3600) % 60)
}


func formattedTime(seconds: Int) -> String {
    let (hours, minutes, seconds) = secondsToHoursMinutesSeconds(seconds: seconds)
    let hoursString = hours
    var minutesString = "00"
    if minutes < 10 {
        minutesString = "0\(minutes)"
    } else {
        minutesString = String(minutes)
    }
    var secondsString = "00"
    if seconds < 10 {
        secondsString = "0\(seconds)"
    } else {
        secondsString = String(seconds)
    }
    if hours >= 1 {
        return "\(hoursString):\(minutesString):\(secondsString)"
    } else {
        return "\(minutesString):\(secondsString)"
    }
}

func saveRuns(_ runs: [Run]) {
    let data = runs.map { try? JSONEncoder().encode($0) }
    UserDefaults.standard.set(data, forKey: "Runs")
    print("Saved")
}

func loadRuns() -> [Run] {
    print("LOAD")
    guard let encodedData = UserDefaults.standard.array(forKey: "Runs") as? [Data] else {
        return []
    }
    return encodedData.map { try! JSONDecoder().decode(Run.self, from: $0) }
}
