
import UIKit

struct BmiBrain {
    
    var bmi: BMI?
    
    func getValue() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "Sin valorar"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.green
    }
    
    mutating func calculate(height: Float, weight: Float){
        let bmiValue = weight / pow(height, 2)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Debes subir peso", color: UIColor.cyan)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Tu peso está bien", color: UIColor.green)
        } else {
            bmi = BMI(value: bmiValue, advice: "Tienes sobrepeso", color: UIColor.red)
        }
        
    }
}
