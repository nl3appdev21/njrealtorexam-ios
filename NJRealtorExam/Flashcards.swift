//
//  Flashcards.swift
//  NJRealtorExam
//
//  Created by user on 7/25/21.
//

import Foundation
import SwiftUI
import UIKit

struct Flashcards: View {
    let greenBtn = Color(red: 76.0/255, green: 84.0/255, blue: 75.0/255)
    let blueBtn = Color(red: 53.0/255, green: 180.0/255, blue: 230.0/255)
    var index: Int = 0
    var jsonData = LoadJsonData().examItem  //  loads the json file !!
    var flashcardcount = ""

    init() {
        flashcardcount = String(index) + " / " + String(jsonData.count) + " Flashcards " + " details btn"
    }
    func gotoMenu() {
        if let window = UIApplication.shared.windows.first {
            window.rootViewController = UIHostingController(rootView: Menu())
            window.makeKeyAndVisible()
        }
    }
 
    func gotoTakeTest() {
        if let window = UIApplication.shared.windows.first {
            window.rootViewController = UIHostingController(rootView: TakeTest())
            window.makeKeyAndVisible()
        }
    }
    
    func getPrev() {
        
        
    }
    
    func getNext() {
        
        
    }

    var body: some View {
        
        // place background image here !!
        // place background image here !!
        
        VStack(alignment: .leading, spacing: 0){
            
            Group{
            
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
            
            Text(jsonData[index].category)
                .font(.system(size: 26))
                .bold()
                .padding(10)
                .frame(maxWidth: .infinity, alignment: .center)   // << here !!
                .background(Color.gray)
            
            GeometryReader { geo in
                Image(jsonData[index].category)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: geo.size.width)
                }
                
            Text(flashcardcount)
                .font(.system(size: 26))
                .bold()
                .padding(10)
                .frame(maxWidth: .infinity, alignment: .center)   // << here !!
                .background(Color.gray)
            Text("")
            
            Text(jsonData[index].question)
                .padding(10)
                .font(.system(size: 16))
                .frame(maxWidth: .infinity, minHeight: 200, alignment: .topLeading)   // << here !!
                .background(Color.yellow)
            Text("")
                
            Text("SHOW ANSWER")
                .font(.system(size: 26))
                .bold()
                .padding(8)
                .frame(maxWidth: .infinity, alignment: .leading)   // << here !!
                .background(Color.green)
                .foregroundColor(.white)
            Text("")
            
            }
            
            HStack {
            
            Button(action: {
                gotoMenu()
            }, label: {
                Text("goto menu")
                    .bold()
                    .padding(7)
                    .font(.system(size: 20))
                    .background(blueBtn)
                    .cornerRadius(10)
                    .foregroundColor(.white)
            })
                
            Button(action: {
                getPrev()
            }, label: {
                Text("PREV")
                    .bold()
                    .padding(7)
                    .font(.system(size: 20))
                    .background(blueBtn)
                    .cornerRadius(10)
                    .foregroundColor(.white)
            })
            
            Button(action: {
                getNext()
            }, label: {
                Text("NEXT")
                    .bold()
                    .padding(7)
                    .font(.system(size: 20))
                    .background(blueBtn)
                    .cornerRadius(10)
                    .foregroundColor(.white)
            })
                
          }
        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
    }
}
