//
//  Extension.swift
//  Calculator
//
//  Created by 우롱차 on 2022/03/18.
//

import Foundation

extension String {
    func split(with target: Character) -> [String] {
        let splitString = self.split(separator: target)
        let stringArray = splitString.map{ (value) -> String in return String(value)}
        return stringArray
    }
}