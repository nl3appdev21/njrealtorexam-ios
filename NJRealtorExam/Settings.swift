//
//  Settings.swift
//  NJRealtorExam
//
//  Created by user on 7/25/21.
//

import Foundation
import SwiftUI
import UIKit

struct Settings: View {
    let greenBtn = Color(red: 76.0/255, green: 84.0/255, blue: 75.0/255)
    let blueBtn = Color(red: 53.0/255, green: 180.0/255, blue: 230.0/255)
    
    // toggle switchs
    
    /*
      ("Randomize Flashcards ")
      ("Advertising Cards ")
      ("Commission Cards ")
      ("Law Cards ")
      ("Mortgage Cards ")
      ("New Type Cards ")
      ("Ownership Cards ")
    */
    
    func gotoMenu() {
        if let window = UIApplication.shared.windows.first {
            window.rootViewController = UIHostingController(rootView: Menu())
            window.makeKeyAndVisible()
        }
    }

    var body: some View {
            
        Group{
            
            Text(" ")
            Text("Settings")
                .bold()
                .font(.system(size: 26))
                .frame(maxWidth: .infinity, alignment: .center)
                .foregroundColor(.white)
            
            Image("changingears00")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity, alignment: .center)
            Text(" ")
            
            VStack{
                
                Divider()
                    .background(Color.black)
                    .border(Color.red, width: 8) // ?? adjust thickness ??
                Text("Randomize Flashcards ")
                Divider()
                    .background(Color.black)
                    .border(Color.red, width: 8) // ?? adjust thickness ??
                Text("Advertising Cards ")
                Text("Commission Cards ")
                Text("Law Cards ")
                Text("Mortgage Cards ")
                Text("New Type Cards ")
                Text("Ownership Cards ")
                Divider()
                    .background(Color.black)
                    .border(Color.red, width: 8) // ?? adjust thickness ??
                
            }
            
            Spacer()
                
            HStack {
            
            Button(action: {
                gotoMenu()
            }, label: {
            Text("GOTO MENU")
                .font(.system(size: 20))
                .bold()
                .padding(8)
                .frame(maxWidth: .infinity, alignment: .center)
                .background(blueBtn)
                .foregroundColor(.white)
                .cornerRadius(10)
            }).padding(8)
                
          }
            
          Text("")
            
        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
         .background(Color.gray)
        
    }
}
