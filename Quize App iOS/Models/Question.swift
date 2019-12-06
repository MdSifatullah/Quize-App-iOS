//
//  Question.swift
//  Quize App iOS
//
//  Created by Md Sifat on 6/12/19.
//  Copyright © 2019 Md Sifat. All rights reserved.
//
import Foundation

class Question {
    var symbol: String
    var name: String
    var answer: Bool

    init(symbol: String, name: String, answer: Bool) {
        self.symbol = symbol
        self.name = name
        self.answer = answer

    }

    
}

