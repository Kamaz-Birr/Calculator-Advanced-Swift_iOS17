//
//  CalculatorLogic.swift
//  Calculator
//
//  Created by Haldox on 28/10/2023.
//  Copyright © 2023 London App Brewery. All rights reserved.
//

import Foundation

struct CalculatorLogic {
    
    var number: Double
    
    init(number: Double) {
        self.number = number
    }
    
    // make the method parameter mutable by adding "inout" before the double
    func calculate(symbol: String) -> Double? {
        
        if symbol == "+/-" {
            return number * -1
        } else if symbol == "AC" {
            return 0
        } else if symbol == "%" {
            return number / 100
        }
        
        return nil
    }
}
