//
//  Menu.swift
//  NJRealtorExam
//
//  Created by user on 7/25/21.
//

import Foundation
import SwiftUI
import UIKit

struct Menu: View {
    let greenBtn = Color(red: 76.0/255, green: 84.0/255, blue: 75.0/255)
    let blueBtn = Color(red: 53.0/255, green: 180.0/255, blue: 230.0/255)

    func gotoSplash() {
        if let window = UIApplication.shared.windows.first {
            window.rootViewController = UIHostingController(rootView: SplashView())
            window.makeKeyAndVisible()
        }
    }
    
    func gotoMenu() {
        if let window = UIApplication.shared.windows.first {
            window.rootViewController = UIHostingController(rootView: Menu())
            window.makeKeyAndVisible()
        }
    }
    
    func gotoFlashcards() {
        if let window = UIApplication.shared.windows.first {
            window.rootViewController = UIHostingController(rootView: Flashcards())
            window.makeKeyAndVisible()
        }
    }

    func gotoAppInstructions() {
        if let window = UIApplication.shared.windows.first {
            window.rootViewController = UIHostingController(rootView: AppInstructions())
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
    
    func gotoSettings() {
        if let window = UIApplication.shared.windows.first {
            window.rootViewController = UIHostingController(rootView: Settings())
            window.makeKeyAndVisible()
        }
    }
    
    func gotoDevInfo() {
        if let window = UIApplication.shared.windows.first {
            window.rootViewController = UIHostingController(rootView: DevInfo())
            window.makeKeyAndVisible()
        }
    }

    var body: some View {
        
        Group{
            
            Text("")
            Text("NJ Realtor Exam")
                .bold()
                .font(.system(size: 26))
                .frame(maxWidth: .infinity, alignment: .center)
                .foregroundColor(.white)
            
            //  Image("dex01")
            Image("cubeshome")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity, alignment: .center)
            
            Button(action: {
                gotoFlashcards()
            }, label: {
                Text("FLASHCARDS")
                    .font(.system(size: 20))
                    .bold()
                    .padding(8)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .background(blueBtn)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }).padding(8)
            
            Button(action: {
                gotoAppInstructions()
            }, label: {
                Text("APP INSTRUCTIONS")
                    .font(.system(size: 20))
                    .bold()
                    .padding(8)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .background(blueBtn)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }).padding(8)
            
            Button(action: {
                gotoTakeTest()
            }, label: {
                Text("TAKE TEST")
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
                Text("LEADERBOARD")
                    .font(.system(size: 20))
                    .bold()
                    .padding(8)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .background(blueBtn)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }).padding(8)
            
            Button(action: {
                gotoSettings()
            }, label: {
                Text("SETTINGS")
                    .font(.system(size: 20))
                    .bold()
                    .padding(8)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .background(blueBtn)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }).padding(8)
            
            Spacer()
            
            HStack {
                
                Text("Solutions to your development needs.")
                    .font(.system(size: 13))
                    .bold()
                    .padding(10)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .background(blueBtn)
                    .foregroundColor(.white)
                
                Button(action: {
                    gotoDevInfo()
                }, label: {
                    Image("nl3a00")
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: 47, maxHeight: 37)
                }).padding(.trailing,10)
  
            }.padding(10)
             .frame(maxWidth: .infinity, alignment: .center)
             .background(blueBtn)
             .foregroundColor(.white)
        
        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
         .background(Color.gray)
    }
}
