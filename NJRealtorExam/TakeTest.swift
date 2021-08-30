//
//  TakeTest.swift
//  NJRealtorExam
//
//  Created by user on 7/25/21.
//

import Foundation
import SwiftUI
import UIKit

struct TakeTest: View {
    @State var index: Int = 0
    @State var questioncount = " "
    @State var ansnum: Int = -1
    @State var ansCorrect: Int = -1
    @State var correctCount:Int = 0
    @State var ansbtn: String = " "
    @State var btnClicked:Int = -1
    @State var isCorrect: Bool = false
    
    let theGold = Image("goldwinner")
    let rightBtn = Color.green
    let wrongBtn = Color.red
    let greenBtn = Color(red: 76.0/255, green: 84.0/255, blue: 75.0/255)
    let blueBtn = Color(red: 53.0/255, green: 180.0/255, blue: 230.0/255)
    let taketestManager = TaketestManager()
    
    init() {
       _questioncount = State(initialValue:updateQuestionCount())
    }
    
    func checkAnswer(index:Int) {
        isCorrect = taketestManager.submitAnswer(index: index)
        correctCount = taketestManager.correctCount
        ansnum = taketestManager.getAnsNum()
        btnClicked = index
        if(isCorrect){
            ansCorrect = index
        }
    }

    func gotoMenu() {
        if let window = UIApplication.shared.windows.first {
            window.rootViewController = UIHostingController(rootView: Menu())
            window.makeKeyAndVisible()
        }
    }
    
    func getNext() {
        index = taketestManager.nextQuestion()
        questioncount = updateQuestionCount()
    }
    
    func updateQuestionCount() -> String {
        let count = String(index + 1) + " / " + String(taketestManager.getQuestionCount()) + " Questions "
        return count
    }

    var body: some View {
        
        VStack(alignment: .leading, spacing: 0){
            
            Text((questioncount) + ("   ***   Correct  ") + String(correctCount))
                .font(.system(size: 17))
                .bold()
                .padding(10)
                .frame(maxWidth: .infinity, alignment: .center)
                .background(Color.black)
                .foregroundColor(.white)
                .border(Color.white, width: 5)
            Text(" ")
            
            Text(taketestManager.getCategory())
            .font(.system(size: 22))
            .bold()
            .padding(10)
            .frame(maxWidth: .infinity, alignment: .center)
            .background(Color.white)
            .foregroundColor(.black)
            .border(Color.black, width: 5)

            GeometryReader { geo in
                Image(ansnum > -1 ? (!isCorrect ? "redxbtn" : "goldbulb") : taketestManager.getCategory())
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(21)
                    .frame(width: geo.size.width)
                    .background(Color.black)
            }
            
            Group{
                
                Text(taketestManager.getQuestion())
                    .padding(10)
                    .font(.system(size: 17))
                    .frame(maxWidth: .infinity, minHeight: 200, alignment: .topLeading)
                    .foregroundColor(.white)
                    .background(Color.gray)
                Text("")
                    
                Button(action: {
                    checkAnswer(index: 0)
                }, label: {
                    Text(taketestManager.getanswers()[0])  // ans 01
                        .bold()
                        .padding(13)
                        .font(.system(size: 13))
                        .frame(maxWidth: .infinity, alignment: .topLeading)
                        // .background(blueBtn)
                        .background(ansnum > -1 ? (ansnum == 0 ? rightBtn: btnClicked == 0 ? wrongBtn: blueBtn) : blueBtn)
                        .foregroundColor(.white)
                    })
                Text("")
                
                Button(action: {
                    checkAnswer(index: 1)
                }, label: {
                    Text(taketestManager.getanswers()[1])  // ans 02
                        .bold()
                        .padding(13)
                        .font(.system(size: 13))
                        .frame(maxWidth: .infinity, alignment: .topLeading)
                        .background(ansnum > -1 ? (ansnum == 1 ? rightBtn: btnClicked == 1 ? wrongBtn: blueBtn) : blueBtn)
                        .foregroundColor(.white)
                }) // .padding(.leading,10) // ?? use to add padding to sides of textbox or buttons
        
                Text("")
                
                Button(action: {
                    checkAnswer(index: 2)
                }, label: {
                    Text(taketestManager.getanswers()[2])  // ans 03
                        .bold()
                        .padding(13)
                        .font(.system(size: 13))
                        .frame(maxWidth: .infinity, alignment: .topLeading)
                        .background(ansnum > -1 ? (ansnum == 2 ? rightBtn: btnClicked == 2 ? wrongBtn: blueBtn) : blueBtn)
                        .foregroundColor(.white)
                }) // .padding(.leading,10) // ?? use to add padding to sides of textbox or buttons
        
                Text("")
                
                Button(action: {
                    checkAnswer(index: 3)
                }, label: {
                    Text(taketestManager.getanswers()[3])  // ans 04
                        .bold()
                        .padding(13)
                        .font(.system(size: 13))
                        .frame(maxWidth: .infinity, alignment: .topLeading)
                        .background(ansnum > -1 ? (ansnum == 3 ? rightBtn: btnClicked == 3 ? wrongBtn: blueBtn) : blueBtn)
                        .foregroundColor(.white)
                }) // .padding(.leading,10) // ?? use to add padding to sides of textbox or buttons
                Text("")
                
            }
                
            HStack {
            
            Button(action: {
                gotoMenu()
            }, label: {
                Text("GOTO MENU")
                    .bold()
                    .padding(12)
                    .font(.system(size: 17))
                    .background(blueBtn)
                    .cornerRadius(10)
                    .foregroundColor(.white)
            }).padding(.leading,10)
            
            Button(action: {  //  add if to change button apperance
                getNext()
                ansnum = -1
                btnClicked = -1
            }, label: {
            Text("NEXT QUESTION")
                .bold()
                .padding(12)
                .font(.system(size: 17))
                .background(index == taketestManager.getQuestionCount() - 1 ? Color.gray : blueBtn)
                //  .background(index > taketestManager.getQuestionCount() - 1 ? Color.gray : blueBtn)
                .cornerRadius(10)
                .foregroundColor(.white)
            }).disabled(index == taketestManager.getQuestionCount() - 1)
              
          }
            
          Text("")
            
        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
         .background(Color.gray)
    }
}
