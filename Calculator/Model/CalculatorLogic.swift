//
//  CalculatorLogic.swift
//  Calculator
//
//  Created by Haldox on 28/10/2023.
//  Copyright © 2023 London App Brewery. All rights reserved.
//

import Foundation

struct CalculatorLogic {
    
    private var number: Double?
    
    private var intermediateCalculation: (operand1: Double, operation: String)?
    
    mutating func setNumber(_ number: Double) {
        self.number = number
    }
    
    mutating func calculate(symbol: String) -> Double? {
        
        if let n = number {
            switch symbol {
            case "+/-":
                return n * -1
            case "AC":
                return 0
            case "%":
                return n / 100
            case "=":
                return performTwoNumberCalc(operand2: n)
            default:
                intermediateCalculation = (operand1: n, operation: symbol)
            }
        }
        
        return nil
    }
    
    private func performTwoNumberCalc(operand2: Double) -> Double? {
        
        if let operand1 = intermediateCalculation?.operand1, let operation = intermediateCalculation?.operation {
            
            switch operation {
            case "+":
                return operand1 + operand2
            case "-":
                return operand1 - operand2
            case "×":
                return operand1 * operand2
            case "÷":
                return operand1 / operand2
            default:
                fatalError("The operation passed in doesn't match any of the cases")
            }
        }
        
        return nil
    }
}
