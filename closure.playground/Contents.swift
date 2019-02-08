import UIKit

struct MathOperation {
    
    var units: String
    var operation: (Double, Double) -> Double

    
    init?(units: String, operation: @escaping (Double, Double) -> Double) {
        
        if (units == "")
        {
            return nil
        }
        
        self.units = units
        self.operation = operation
    }
}


let math = {
    (firstVal: Double, secondVal: Double) in
    
    return firstVal * secondVal
}
var distance = MathOperation(units: "feet", operation: math)

if let distance = distance {
    let answer = distance.operation(30.0, 60.0)
    let units = distance.units
    
    print("\(answer) \(units)")
}
