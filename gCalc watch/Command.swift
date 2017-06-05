//
//  Command.swift
//  gCalc
//
//  Created by Guillermo RD on 3/7/16.
//  Copyright © 2016 GuillermoRD. All rights reserved.
//

import Foundation

enum CommandType {
    case divide
    case multiply
    case subtract
    case add
}

class Command: NSObject {
    var type: CommandType
    let leftValue: Double

    init(type: CommandType, leftValue: Double) {
        self.type = type
        self.leftValue = leftValue
        super.init()
    }

    func executeWithNewValue(_ newValue: Double) -> Double {
        var result = leftValue

        switch type {
        case .divide: result /= newValue
        case .multiply: result *= newValue
        case .subtract: result -= newValue
        case .add: result += newValue
        }

        return result
    }
}
