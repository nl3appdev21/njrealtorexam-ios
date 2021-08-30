//
//  TaketestManager.swift
//  NJRealtorExam
//
//  Created by user on 8/22/21.
//

import Foundation

public class TaketestManager {
    var index = 0
    var jsonData:[ExamItem]
    private var currentItem:ExamItem?
    private var score:Float = -1
    var correctCount:Int = 0

    init(){
        jsonData = LoadJsonData().examItem  //  loads the json file !!
        currentItem = jsonData[index]
    }
    
    func submitAnswer(index:Int) -> Bool{
        let isCorrect = index == currentItem!.correct
        if(isCorrect){
            correctCount+=1
        }
        return isCorrect
    }
    
    func nextQuestion() -> Int{
        index+=1
        currentItem = jsonData[index]
        return index
    }
    
    func prevQuestion() -> Int{
        index-=1
        currentItem = jsonData[index]
        return index
    }
    
    func getQuestion() -> String{
        return currentItem!.question
    }
    
    func getCategory() -> String{
        return currentItem!.category
    }
    
    func getanswers() -> [String]{
        return currentItem!.answers
    }
    
    func getCorrectAnswers() -> String{
        return currentItem!.answers[currentItem!.correct]
    }
    
    func isFirstQuestion() -> Bool{
        return index == 0
    }
    
    func getQuestionCount() -> Int{
        return jsonData.count
    }
    
    func getAnswerDetails() -> String{
        return currentItem!.details
    }
    
    func getAnsNum() -> Int{
        return currentItem!.correct
    }
    
}
