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
    @State var questioncount = ""
    @State var ansnum: Int = 0
    @State var anscorrect: Int = 13
    @State var details: Int = 0
    @State var ansdetails: String = " "
    @State var ansbtn: String = " "  //  ????
    @State var ansbtn1: Int = -1  //  ????

    let thegold = Image("goldwinner")  //  ????????
    let greenBtn = Color(red: 76.0/255, green: 84.0/255, blue: 75.0/255)
    let blueBtn = Color(red: 53.0/255, green: 180.0/255, blue: 230.0/255)
    let taketestManager = TaketestManager()
    
    init() {
       _questioncount = State(initialValue:updateQuestionCount())
    }
    
    func showrightans() {
        print(ansnum)
        print(" ansbtn clicked ")
        if (ansbtn1 == taketestManager.getAnsNum()){
            // print(" what did you do ???? ")
            // print(ansbtn1)
            // print(" ans correct is = ")
            print(anscorrect)
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
        ansnum = 0
        ansbtn1 = -1
        details = 0
        //  ??  print(taketestManager.getAnsNum())
    }
    
    func showAnswer() {
        if ansnum == 0 {
            ansbtn = "SHOW ANSWER"
            ansnum = 1
        }
        
        if ansnum == 1 {
            ansbtn = taketestManager.getCorrectAnswers()
            ansnum = 1
        }
    }
    
    func showDetails() {
        if details == 1 {
            ansdetails  = taketestManager.getAnswerDetails()
            //  details = 0 or 1
        }
    }
    
    func updateQuestionCount() -> String {
        let count = String(index + 1) + " / " + String(taketestManager.getQuestionCount()) + " Questions "
        //  ????????  + " ? details btn ?"
        //  ????????  Image("goldwinner")
        print(taketestManager.getAnsNum())
        print(" is the correct answer ")
        return count
    }

    var body: some View {
        
        VStack(alignment: .leading, spacing: 0){
            
            // get num correct, get it from count from 
            Text((questioncount) + (" Correct ?? "))
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
                Image(taketestManager.getCategory())
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
                    .foregroundColor(.white) // ??
                    .background(Color.gray)
        
                Text("")
                    
                Button(action: {
                    ansnum = 0
                    ansbtn1 = 0
                    showrightans()
                }, label: {
                    Text(taketestManager.getanswers()[0])  // ans 00
                        .bold()
                        .padding(13)
                        .font(.system(size: 13))
                        .frame(maxWidth: .infinity, alignment: .topLeading)
                        .background(blueBtn)
                        .foregroundColor(.white)
                    }) // .padding(.leading,10) // ?? use to add padding to sides of textbox or buttons
                Text("")
                
                Button(action: {
                    ansnum = 1
                    ansbtn1 = 1
                    showrightans()
                }, label: {
                    Text(taketestManager.getanswers()[1])  // ans 01
                        .bold()
                        .padding(13)
                        .font(.system(size: 13))
                        .frame(maxWidth: .infinity, alignment: .topLeading)
                        .background(blueBtn)
                        .foregroundColor(.white)
                }) // .padding(.leading,10) // ?? use to add padding to sides of textbox or buttons
        
                Text("")
                
                Button(action: {
                    ansnum = 2
                    ansbtn1 = 2
                    showrightans()
                }, label: {
                    Text(taketestManager.getanswers()[2])  // ans 02
                        .bold()
                        .padding(13)
                        .font(.system(size: 13))
                        .frame(maxWidth: .infinity, alignment: .topLeading)
                        .background(blueBtn)
                        .foregroundColor(.white)
                }) // .padding(.leading,10) // ?? use to add padding to sides of textbox or buttons
        
                Text("")
                
                Button(action: {
                    ansnum = 3
                    ansbtn1 = 3
                    showrightans()
                }, label: {
                    Text(taketestManager.getanswers()[3])  // ans 03
                        .bold()
                        .padding(13)
                        .font(.system(size: 13))
                        .frame(maxWidth: .infinity, alignment: .topLeading)
                        .background(blueBtn)
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
            }, label: {
            Text("NEXT QUESTION")
                .bold()
                .padding(12)
                .font(.system(size: 17))
                .background(index == taketestManager.getQuestionCount() - 1 ? Color.gray : blueBtn)
                .cornerRadius(10)
                .foregroundColor(.white)
            }).disabled(index == taketestManager.getQuestionCount() - 1)
              
          }
            
          Text("")
            
        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
         .background(Color.gray)
        
    }
}
