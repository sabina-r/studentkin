
import Foundation
import UIKit

class Utilities {

    
    static func styleButton(_ button:UIButton) {

        button.layer.cornerRadius = 5.0

    }
    
    static func styleDiveButton(_ button:UIButton) {

        button.layer.cornerRadius = 25.0

    }
    
    
    
    static func isPasswordValid(_ password : String) -> Bool {
        
        let passwordTest = NSPredicate(format: "SELF MATCHES %@", "^(?=.*[a-z])(?=.*[$@$#!%*?&])[A-Za-z\\d$@$#!%*?&]{8,}")
        return passwordTest.evaluate(with: password)
    }
    
}
