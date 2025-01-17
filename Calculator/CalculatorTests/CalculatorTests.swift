//
//  CalculatorTests.swift
//  CalculatorTests
//
//  Created by 우롱차 on 2022/03/14.
//

import XCTest
@testable import Calculator

class CalculatorTests: XCTestCase {
        
    func test_deque동작확인_3_2_입력_3_출력() {
        //given
        let calculatorItemQueue = CalculatorItemQueue()
        let firstEnqueue: Double = 3
        let secondEnqueue: Double = 2
        calculatorItemQueue.enqueue(calculateItem: firstEnqueue)
        calculatorItemQueue.enqueue(calculateItem: secondEnqueue)
        
        //when
        let dequeResult = calculatorItemQueue.dequeue() as? Double
        
        //then
        XCTAssertEqual(firstEnqueue, dequeResult)
    }
    
    func test_deque동작확인_3_2_입력_3_2_출력() {
        //given
        let calculatorItemQueue = CalculatorItemQueue()
        let firstEnqueue:Double = 3
        let secondEnqueue:Double = 2
        calculatorItemQueue.enqueue(calculateItem: firstEnqueue)
        calculatorItemQueue.enqueue(calculateItem: secondEnqueue)
        
        //when
        let dequeResult = calculatorItemQueue.dequeue() as? Double
        let dequeResult2 = calculatorItemQueue.dequeue() as? Double
        
        XCTAssertEqual(firstEnqueue, dequeResult)
        XCTAssertEqual(secondEnqueue, dequeResult2)
    }
    
    func test_ExpressionParser동작확인_55출력() {
        //given
        let testString = "3 + 2 + 1 * 10 - 5"
        
        //when
        let formula = ExpressionParser.parse(from: testString)
        
        let result = formula.result()
        
        XCTAssertEqual(result, 55)
    }
    
    func test_ExpressionParser동작확인_12출력() {
        //given
        let testString = "3 + 2 + 1 * 10 / 5"
        
        //when
        let formula = ExpressionParser.parse(from: testString)
        
        let result = formula.result()
        
        XCTAssertEqual(result, 12)
    }
}
