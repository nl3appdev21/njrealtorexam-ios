//
//  Leaderboard.swift
//  NJRealtorExam
//
//  Created by user on 7/25/21.
//

import Foundation
import SwiftUI
import UIKit

struct Leaderboard: View {
    let greenBtn = Color(red: 76.0/255, green: 84.0/255, blue: 75.0/255)
    let blueBtn = Color(red: 53.0/255, green: 180.0/255, blue: 230.0/255)
    
    func gotoMenu() {
        if let window = UIApplication.shared.windows.first {
            window.rootViewController = UIHostingController(rootView: Menu())
            window.makeKeyAndVisible()
        }
    }

    var body: some View {
            
        Group{
            
            Text(" ")
            Text("Leaderboard")
                .bold()
                .font(.system(size: 26))
                .frame(maxWidth: .infinity, alignment: .center)
                .foregroundColor(.white)
            
            Group{
  
                ZStack {
                    Image("gold0")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Text("               " + "Nash Nash Ingram1")
                        .font(.system(size: 21))
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, alignment: .center)
                }
                
                ZStack {
                    Image("silver0")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Text("               " + "Nash Nash Ingram1")
                        .font(.system(size: 21))
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, alignment: .center)
                }
                
                ZStack {
                    Image("bronze0")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Text("               " + "Nash Nash Ingram1")
                        .font(.system(size: 21))
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, alignment: .center)
                }
        
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
