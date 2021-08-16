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
    @State var flashcardcount = ""
    @State var ans: Int = 0
    @State var details: Int = 0
    @State var ansdetails: String = " "
    @State var ansbtn: String = " "
    
    let thegold = Image("goldwinner")  //  ????????
    let greenBtn = Color(red: 76.0/255, green: 84.0/255, blue: 75.0/255)
    let blueBtn = Color(red: 53.0/255, green: 180.0/255, blue: 230.0/255)
    let flashcardManager = FlashcardManager()
    
    init() {
       _flashcardcount = State(initialValue:updateCardCount())
    }
    
    func showrightans() {
        print("show right or wrong ans")
    }
    
    func gotoMenu() {
        if let window = UIApplication.shared.windows.first {
            window.rootViewController = UIHostingController(rootView: Menu())
            window.makeKeyAndVisible()
        }
    }
    
    func getNext() {
        index = flashcardManager.nextCard()
        flashcardcount = updateCardCount()
        ans = 0
        details = 0
    }
    
    func showAnswer() {
        if ans == 0 {
            ansbtn = "SHOW ANSWER"
            ans = 1
        }
        
        if ans == 1 {
            ansbtn = flashcardManager.getCorrectAnswers()
            ans = 1
        }
    }
    
    func showDetails() {
        if details == 1 {
            ansdetails  = flashcardManager.getAnswerDetails()
            //  details = 0 or 1
        }
    }
    
    func updateCardCount() -> String {
        let count = String(index + 1) + " / " + String(flashcardManager.getCardCount()) + " Questions "
        //  ????????  + " ? details btn ?"
        //  ????????  Image("goldwinner")
        return count
    }

    var body: some View {
        
        VStack(alignment: .leading, spacing: 0){
            
            Text((flashcardcount) + (" -- 0 Correct"))
                .font(.system(size: 17))
                .bold()
                .padding(10)
                .frame(maxWidth: .infinity, alignment: .center)
                .background(Color.black)
                .foregroundColor(.white)
                .border(Color.white, width: 5)
            
            Text(" ")
            
            Text(flashcardManager.getCategory())
            .font(.system(size: 22))
            .bold()
            .padding(10)
            .frame(maxWidth: .infinity, alignment: .center)
            .background(Color.white)
            .foregroundColor(.black)
            .border(Color.black, width: 5)

            GeometryReader { geo in
                Image(flashcardManager.getCategory())
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(21)
                    .frame(width: geo.size.width)
            }
            
            Group{
                
                Text(flashcardManager.getQuestion())
                    .padding(10)
                    .font(.system(size: 17))
                    .frame(maxWidth: .infinity, minHeight: 200, alignment: .topLeading)
                    .background(Color.gray)
        
                Text("")
                    
                Button(action: {
                    showrightans()
                }, label: {
                    Text(flashcardManager.getanswers()[0])  // ans 00
                        .bold()
                        .padding(13)
                        .font(.system(size: 13))
                        .frame(maxWidth: .infinity, alignment: .topLeading)
                        .background(blueBtn)
                        .foregroundColor(.white)
                    }) // .padding(.leading,10) // ?? use to add padding to sides of textbox or buttons
                Text("")
                
                Button(action: {
                    showrightans()
                }, label: {
                    Text(flashcardManager.getanswers()[1])  // ans 01
                        .bold()
                        .padding(13)
                        .font(.system(size: 13))
                        .frame(maxWidth: .infinity, alignment: .topLeading)
                        .background(blueBtn)
                        .foregroundColor(.white)
                }) // .padding(.leading,10) // ?? use to add padding to sides of textbox or buttons
        
                Text("")
                
                Button(action: {
                    showrightans()
                }, label: {
                    Text(flashcardManager.getanswers()[2])  // ans 02
                        .bold()
                        .padding(13)
                        .font(.system(size: 13))
                        .frame(maxWidth: .infinity, alignment: .topLeading)
                        .background(blueBtn)
                        .foregroundColor(.white)
                }) // .padding(.leading,10) // ?? use to add padding to sides of textbox or buttons
        
                Text("")
                
                Button(action: {
                    showrightans()
                }, label: {
                    Text(flashcardManager.getanswers()[3])  // ans 03
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
                    .padding(13)
                    .font(.system(size: 19))
                    .background(blueBtn)
                    .cornerRadius(10)
                    .foregroundColor(.white)
            }).padding(.leading,10)
            
            Button(action: {  //  add if to change button apperance
                getNext()
            }, label: {
            Text("NEXT QUESTION")
                .bold()
                .padding(13)
                .font(.system(size: 19))
                .background(index == flashcardManager.getCardCount() - 1 ? Color.gray : blueBtn)
                .cornerRadius(10)
                .foregroundColor(.white)
            }).disabled(index == flashcardManager.getCardCount() - 1)
              
          }
            
          Text("")
            
        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
         .background(Color.black)
        
    }
}
