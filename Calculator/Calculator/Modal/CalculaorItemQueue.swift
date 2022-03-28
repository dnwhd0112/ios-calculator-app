//
//  CalculaorItemQueue.swift
//  Calculator
//
//  Created by 파프리 on 2022/03/28.
//

import Foundation

struct CalculatorItemQueue<T: CalculateItem> {
    
    private var inputStack:[T] = []
    private var outputStack:[T] = []
    
    var count: Int {
        return inputStack.count + outputStack.count
    }
    
    mutating func enqueue(_ element: T) {
        inputStack.append(element)
    }
    
    mutating func dequeue() -> T? {
        if outputStack.isEmpty {
            outputStack = inputStack.reversed()
            inputStack.removeAll()
        }
        
        return outputStack.popLast()
    }
    
    mutating func allClear() {
        inputStack.removeAll()
        outputStack.removeAll()
    }
    
}
