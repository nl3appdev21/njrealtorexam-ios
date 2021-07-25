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
        
        // place background image here !!
        // place background image here !!
        
        VStack(alignment: .leading, spacing: 0){
            
            Text("this is the menu screen man !!")
            // Text("this is the menu screen man !!")
            Text(" ")
            Text("place background image here !!")
            Text(" ")
            
            Button(action: {
                gotoFlashcards()
                print("goto flashcards screen")
            }, label: {
                Text("goto flashcards")
                    .padding(7)
                    .font(.system(size: 16))
                    .background(greenBtn)
                    .foregroundColor(.white)
            })
            
            Button(action: {
                gotoAppInstructions()
                print("goto appinstructions screen")
            }, label: {
                Text("goto appinstructions")
                    .padding(7)
                    .font(.system(size: 16))
                    .background(greenBtn)
                    .foregroundColor(.white)
            })
            
            Button(action: {
                gotoTakeTest()
                print("goto taketestscreen")
            }, label: {
                Text("goto taketest")
                    .padding(7)
                    .font(.system(size: 16))
                    .background(greenBtn)
                    .foregroundColor(.white)
            })
            
            Button(action: {
                gotoLeaderboard()
                print("goto leaderboard screen")
            }, label: {
                Text("goto leaderboard")
                    .padding(7)
                    .font(.system(size: 16))
                    .background(greenBtn)
                    .foregroundColor(.white)
            })
            
            Button(action: {
                gotoSettings()
                print("goto settings screen")
            }, label: {
                Text("goto settings")
                    .padding(7)
                    .font(.system(size: 16))
                    .background(greenBtn)
                    .foregroundColor(.white)
            })
            
            Button(action: {
                gotoDevInfo()
                print("goto devinfo screen")
            }, label: {
                Text("goto devinfo")
                    .padding(7)
                    .font(.system(size: 16))
                    .background(greenBtn)
                    .foregroundColor(.white)
            })
            
        }
    }
}
