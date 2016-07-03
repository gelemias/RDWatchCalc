//
//  Command.swift
//  gCalc
//
//  Created by Guillermo RD on 3/7/16.
//  Copyright © 2016 GuillermoRD. All rights reserved.
//

import Foundation

enum CommandType
{
    case Divide
    case Multiply
    case Subtract
    case Add
}

class Command: NSObject
{
    var type: CommandType
    let leftValue: Double
    
    init(type: CommandType, leftValue: Double)
    {
        self.type = type
        self.leftValue = leftValue
        super.init()
    }
    
    func executeWithNewValue(newValue: Double) -> Double
    {
        var result = leftValue
        
        switch type
        {
        case .Divide: result /= newValue
        case .Multiply: result *= newValue
        case .Subtract: result -= newValue
        case .Add: result += newValue
        }
        
        return result
    }
}