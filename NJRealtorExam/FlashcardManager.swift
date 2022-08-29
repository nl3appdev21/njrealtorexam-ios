//
//  FlashcardManager.swift
//  NJRealtorExam
//
//  Created by user on 8/8/21.
//

import Foundation

public class FlashcardManager {
    var index = 0
    var jsonData:[ExamItem]
    private var currentItem:ExamItem?

    init(){
        jsonData = LoadJsonData().examItem  //  loads the json file !!
        currentItem = jsonData[index]
    }
    
    func nextCard() -> Int{
        index+=1
        currentItem = jsonData[index]
        return index
    }
    
    func prevCard() -> Int{
        index-=1
        currentItem = jsonData[index]
        return index
    }
    
    func getQuestion() -> String{
        return currentItem!.question
    }
    
    func getCategory() -> String{
        // print(currentItem!.category)
        return currentItem!.category.lowercased()
    }
    
    func getanswers() -> [String]{
        return currentItem!.answers
    }
    
    func getCorrectAnswers() -> String{
        return currentItem!.answers[currentItem!.correct]
    }
    
    func isFirstCard() -> Bool{
        return index == 0
    }
    
    func getCardCount() -> Int{
        return jsonData.count
    }
    
    func getAnswerDetails() -> String{
        return currentItem!.details
    }
    
    func getAnsNum() -> Int{
        return currentItem!.correct
    }
    
}
