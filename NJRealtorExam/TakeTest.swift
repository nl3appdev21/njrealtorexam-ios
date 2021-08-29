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
    @State var ansnum: Int = 0
    @State var anscorrect: Int = 0
    @State var details: Int = 0
    @State var ansdetails: String = " "
    @State var ansbtn: String = " "
    @State var ansbtn1: Int = -1
    @State var ansbtn2: Int = -1
    @State var ansbtn3: Int = -1
    @State var ansbtn4: Int = -1
    @State var ansisright: Bool = false
    @State var btnclicked: Bool = false
    
    let thegold = Image("goldwinner")
    let rightbtn = Color.green
    let wrongbtn = Color.red
    let greenBtn = Color(red: 76.0/255, green: 84.0/255, blue: 75.0/255)
    let blueBtn = Color(red: 53.0/255, green: 180.0/255, blue: 230.0/255)
    let taketestManager = TaketestManager()
    
    init() {
       _questioncount = State(initialValue:updateQuestionCount())
    }
    
    func showrightans1() {
        print(ansnum)
        print(" -------- ")
        print(" ansbtn0 clicked ")
        print(" -------- ")
        if (ansbtn1 == taketestManager.getAnsNum()){
            anscorrect += 1
            ansisright = true
            btnclicked = true
            print(" 1 is the correct answer ? ")
            print(" -------- ")
            print(anscorrect)
            print(" ")
        }
    }
    
    func showrightans2() {
        print(ansnum)
        print(" -------- ")
        print(" ansbtn1 clicked ")
        print(" -------- ")
        if (ansbtn2 == taketestManager.getAnsNum()){
            anscorrect += 1
            ansisright = true
            btnclicked = true
            print(" 2 is the correct answer ?? ")
            print(" -------- ")
            print(anscorrect)
            print(" ")
        }
    }
    
    func showrightans3() {
        print(ansnum)
        print(" -------- ")
        print(" ansbtn2 clicked ")
        print(" -------- ")
        if (ansbtn3 == taketestManager.getAnsNum()){
            anscorrect += 1
            ansisright = true
            btnclicked = true
            print(" 3 is the correct answer ??? ")
            print(" -------- ")
            print(anscorrect)
            print(" ")
        }
    }
    
    func showrightans4() {
        print(ansnum)
        print(" -------- ")
        print(" ansbtn3 clicked ")
        print(" -------- ")
        if (ansbtn4 == taketestManager.getAnsNum()){
            anscorrect += 1
            ansisright = true
            btnclicked = true
            print(" 4 is the correct answer ???? ")
            print(" -------- ")
            print(anscorrect)
            print(" ")
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
        ansnum = -1
        ansbtn1 = -1
        ansbtn2 = -1
        ansbtn3 = -1
        ansbtn4 = -1
        ansisright = false
        btnclicked = false
        details = 0
    }
    
    func showDetails() {
        if details == 1 {
            ansdetails  = taketestManager.getAnswerDetails()
        }
    }
    
    func updateQuestionCount() -> String {
        let count = String(index + 1) + " / " + String(taketestManager.getQuestionCount()) + " Questions "
        print(taketestManager.getAnsNum())
        print(" is the correct answer *** ")
        return count
    }

    var body: some View {
        
        VStack(alignment: .leading, spacing: 0){
            
            Text((questioncount) + ("   ***   Correct  ") + String(anscorrect))
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
                    .foregroundColor(.white)
                    .background(Color.gray)
                Text("")
                    
                Button(action: {
                    ansnum = 0
                    ansbtn1 = 0
                    showrightans1()
                }, label: {
                    Text(taketestManager.getanswers()[0])  // ans 01
                        .bold()
                        .padding(13)
                        .font(.system(size: 13))
                        .frame(maxWidth: .infinity, alignment: .topLeading)
                        .background(blueBtn)
                        // ???? .background(index == flashcardManager.getCardCount() ? Color.gray : blueBtn)
                        .foregroundColor(.white)
                    })
                Text("")
                
                Button(action: {
                    ansnum = 1
                    ansbtn2 = 1
                    showrightans2()
                }, label: {
                    Text(taketestManager.getanswers()[1])  // ans 02
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
                    ansbtn3 = 2
                    showrightans3()
                }, label: {
                    Text(taketestManager.getanswers()[2])  // ans 03
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
                    ansbtn4 = 3
                    showrightans4()
                }, label: {
                    Text(taketestManager.getanswers()[3])  // ans 04
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
