//
//  Converter.swift
//  HelloSwift
//
//  Created by Фёдор Королёв on 25.02.17.
//  Copyright © 2017 Фёдор Королёв. All rights reserved.
//

import Foundation

struct Converter {
    
    let forwardRatio: Double
    let backwardRatio: Double
    
    var precision: Int
    
    func convertForward(amount: Double) -> Double {
        return roundValue(amount: amount * forwardRatio, precision: self.precision)
    }
    func convertBackward(amount: Double) -> Double {
        return roundValue(amount: amount * backwardRatio, precision: self.precision)
    }
    
    private func roundValue(amount: Double, precision: Int) -> Double {
        let multiply = pow(10, Double(precision))
        let newValue = round(amount * multiply)
        return newValue / multiply
    }
    
}
