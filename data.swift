//
//  data.swift
//  Relativity Calculator
//
//  Created by Brendan Moran on 10/3/17.
//  Copyright © 2017 Brendan Moran. All rights reserved.
//

import Foundation

precedencegroup ExponentiationPrecedence {
    associativity: right
    higherThan: MultiplicationPrecedence
}

infix operator ** : ExponentiationPrecedence

func ** (_ base: Double, _ exp: Double) -> Double {
    return pow(base, exp)
}

func ** (_ base: Float, _ exp: Float) -> Float {
    return pow(base, exp)
}

let speedOfLight: Double = 1
func calculate (timeTraveled: Double, travelSpeed: Double) -> Double {
    let earthTimePassed = timeTraveled/(1 - (travelSpeed * speedOfLight) ** 2 / speedOfLight ** 2) ** 0.5
    return earthTimePassed
}
