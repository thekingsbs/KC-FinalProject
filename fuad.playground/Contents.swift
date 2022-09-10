import UIKit

// select a experience level (buttons). each one has a corresponding value (Switch statement)

//beginner
//intermediate
//advanced

func compositeScore(weight: Double, height: Double, experience: String) -> Double {
    
    let multiplier: Double
    
    let bmi = weight / (height * height)
    
    if experience == "Beginner" {
        
        multiplier = 0.3
        
    } else if experience == "Intermediate" {
        
        multiplier = 0.6
        
    } else {
        
        multiplier = 1
        
    }
    
    let compositeScore = multiplier * bmi
    
    return compositeScore
}


func choosePlan() {


}
