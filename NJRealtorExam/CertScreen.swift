//
//  CertScreen.swift
//  NJRealtorExam
//
//  Created by user on 7/25/21.
//

import Foundation
import SwiftUI
import UIKit

struct CertScreen: View {
    @State private var name1: String = "You are a winner"
    @State private var winner: String = ""
    
    let greenBtn = Color(red: 76.0/255, green: 84.0/255, blue: 75.0/255)
    let blueBtn = Color(red: 53.0/255, green: 180.0/255, blue: 230.0/255)
    
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
    
    func gotoLeaderboard() {
        if let window = UIApplication.shared.windows.first {
            window.rootViewController = UIHostingController(rootView: Leaderboard())
            window.makeKeyAndVisible()
        }
    }

        var body: some View {
            
            Group{
            
            GeometryReader { geo in
                Image("bluecert")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(21)
                    .frame(width: geo.size.width)
                    .background(Color.gray)
            }
                       
            Text("\(name1) !")
                .font(.system(size: 20))
                .bold()
                .padding(8)
                .frame(maxWidth: .infinity, alignment: .center)
                .foregroundColor(.white)
                
            TextField("Enter your name", text: $winner)
                .font(.system(size: 20))
                .padding(8)
                .frame(maxWidth: .infinity, alignment: .center)
                // .background(Color.white)
                .foregroundColor(.white)
            
            Text(" ")
            Text(" ")
            Text(" ")
                
            HStack{
                
                Button(action: {
                    gotoMenu()
                }, label: {
                    Text("goto menu")
                        .font(.system(size: 20))
                        .bold()
                        .padding(8)
                        .frame(maxWidth: .infinity, alignment: .center)
                        .background(blueBtn)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }).padding(8)
                
                Button(action: {
                    gotoLeaderboard()
                }, label: {
                    Text("submit name 2 LB")
                        .font(.system(size: 20))
                        .bold()
                        .padding(8)
                        .frame(maxWidth: .infinity, alignment: .center)
                        .background(blueBtn)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }).padding(8)

            }
        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
         .background(Color.gray)
    }
}
