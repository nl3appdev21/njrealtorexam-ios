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
    
    func gotoMenu() {
        if let window = UIApplication.shared.windows.first {
            window.rootViewController = UIHostingController(rootView: Menu())
            window.makeKeyAndVisible()
        }
    }
    
    func getPrev() {
        index = flashcardManager.prevCard()
        flashcardcount = updateCardCount()
        ans = 0
        details = 0
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
        let count = String(index + 1) + " / " + String(flashcardManager.getCardCount()) + " Flashcards "
        //  ????????  + " ? details btn ?"
        //  ????????  Image("goldwinner")
        return count
    }

    var body: some View {
        
        VStack(alignment: .leading, spacing: 0){
            
            Text((flashcardcount) + (" -- 0 Correct"))
                .font(.system(size: 13))
                .bold()
                .padding(10)
                .frame(maxWidth: .infinity, alignment: .center)
                .background(Color.black)
                .foregroundColor(.white)
                .border(Color.white, width: 5)
            Text("")
            
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
                
                if details == 1 {
                    Text(" Answer Details:   " + flashcardManager.getAnswerDetails())  //  ???????
                        .padding(10)
                        .font(.system(size: 16))
                        .frame(maxWidth: .infinity, minHeight: 300, alignment: .topLeading)
                        .background(blueBtn)
                } else {
                    Text(flashcardManager.getQuestion())
                        .padding(10)
                        .font(.system(size: 16))
                        .frame(maxWidth: .infinity, minHeight: 300, alignment: .topLeading)
                        .background(Color.yellow)
                }
                Text("")
            }

            if ans == 0 {
                Button(action: {
                    showAnswer()
                }, label: {
                    Text("SHOW ANSWER")
                    .font(.system(size: 20))
                    .bold()
                    .padding(8)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color.green)
                    .foregroundColor(.white)
                })
                Text("")
                
            } else {
                
            if ans == 1 {
                Button(action: {
                    showAnswer()
                }, label: {
                    Text(flashcardManager.getCorrectAnswers())
                    .font(.system(size: 20))
                    .bold()
                    .padding(8)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color.orange)
                    .foregroundColor(.white)
                })
                Text("")
            
                }
            }
                
            HStack {
            
            Button(action: {
                gotoMenu()
            }, label: {
                Text("GOTO MENU")
                    .bold()
                    .padding(7)
                    .font(.system(size: 19))
                    .background(blueBtn)
                    .cornerRadius(10)
                    .foregroundColor(.white)
            }).padding(.leading,10)
                
            Button(action: {  //  add if to change button apperance
                getPrev()
                }, label: {
            Text("PREV")
                .bold()
                .padding(7)
                .font(.system(size: 19))
                .background(flashcardManager.isFirstCard() ? Color.gray : blueBtn)
                .cornerRadius(10)
                .foregroundColor(.white)
                }).disabled(index < 1 )
            
            Button(action: {  //  add if to change button apperance
                getNext()
            }, label: {
            Text("NEXT")
                .bold()
                .padding(7)
                .font(.system(size: 19))
                .background(index == flashcardManager.getCardCount() - 1 ? Color.gray : blueBtn)
                .cornerRadius(10)
                .foregroundColor(.white)
            }).disabled(index == flashcardManager.getCardCount() - 1)
              
            //  added new details btn  ????????
            Button(action: {  //  add if to change btn apperance
                details = 1
            }, label: {
            Text("DETAILS")
                .bold()
                .padding(7)
                .font(.system(size: 13))
                .background(index == flashcardManager.getCardCount() ? Color.gray : blueBtn)
                .cornerRadius(10)
                .foregroundColor(.white)
            })
                
          }
            
          Text("")
            
        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
         .background(Color.gray)
        
    }
}


// take test code
// take test code

/*

import Foundation
import SwiftUI
import UIKit

struct TakeTest: View {
    let greenBtn = Color(red: 76.0/255, green: 84.0/255, blue: 75.0/255)

    func gotoMenu() {
        if let window = UIApplication.shared.windows.first {
            window.rootViewController = UIHostingController(rootView: Menu())
            window.makeKeyAndVisible()
        }
    }

    func passedtest() {
        if let window = UIApplication.shared.windows.first {
            window.rootViewController = UIHostingController(rootView: PassedTest())
            window.makeKeyAndVisible()
        }
    }
    
    func failedtest() {
        if let window = UIApplication.shared.windows.first {
            window.rootViewController = UIHostingController(rootView: FailedTest())
            window.makeKeyAndVisible()
        }
    }

    var body: some View {
        
        // place background image here !!
        // place background image here !!
        
        VStack(alignment: .leading, spacing: 0){
            
            Button(action: {
                gotoMenu()
                print("goto menu screen")
            }, label: {
                Text("< BACK <")
                    .padding(7)
                    .font(.system(size: 16))
                    .background(greenBtn)
                    .foregroundColor(.white)
            })
            
            Text(" ")
            
            Text("this is the taketest screen man !!")
            Text("this is the taketest screen man !!")
            Text(" ")
            Text("place background image here !!")
            Text(" ")
            
            Button(action: {
                gotoMenu()
                print("goto menu screen")
            }, label: {
                Text("goto menu")
                    .padding(7)
                    .font(.system(size: 16))
                    .background(greenBtn)
                    .foregroundColor(.white)
            })
            
            Button(action: {
                passedtest()
                print("goto passedtest screen")
            }, label: {
                Text("goto passedtest")
                    .padding(7)
                    .font(.system(size: 16))
                    .background(greenBtn)
                    .foregroundColor(.white)
            })
            
            Button(action: {
                failedtest()
                print("goto failedtest screen")
            }, label: {
                Text("goto failedtest")
                    .padding(7)
                    .font(.system(size: 16))
                    .background(greenBtn)
                    .foregroundColor(.white)
            })
            
        }
    }
}

*/

// take test code
// take test code
