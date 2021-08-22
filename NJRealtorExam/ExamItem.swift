//
//  ExamItem.swift
//  NJRealtorExam
//
//  Created by user on 8/1/21.
//

import Foundation

struct ExamItem: Codable {
    
    // define fields and data types
    var id: Int
    var category: String
    var question: String
    var answers: [String] // use for njrealtorexam_12.json with array
    var correct: Int
    var details: String
    
}
