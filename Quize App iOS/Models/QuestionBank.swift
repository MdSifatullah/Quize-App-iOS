//
//  QuestionBank.swift
//  Quize App iOS
//
//  Created by Md Sifat on 5/12/19.
//  Copyright © 2019 Md Sifat. All rights reserved.
//
import Foundation

class QuestionBank {
    
    var data = [Question]()
    
    init() {
        
        data.append(Question(symbol: "🍎", name: "Apple", answer: true))
        data.append(Question(symbol: "🍇", name: "Mango", answer: false))
        data.append(Question(symbol: "🍌", name: "Banana", answer: true))
        data.append(Question(symbol: "🥭", name: "Mango", answer: true))
        data.append(Question(symbol: "🍍", name: "Pine Apple", answer: true))
        data.append(Question(symbol: "🍓", name: "Banana", answer: false))
        data.append(Question(symbol: "🍉", name: "Water Melon", answer: true))
        data.append(Question(symbol: "🍒", name: "Cheri", answer: true))
        data.append(Question(symbol: "🍅", name: "Apple", answer: false))
        data.append(Question(symbol: "🍐", name: "Tometo", answer: false))
    }
    
}
