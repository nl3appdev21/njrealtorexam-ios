//
//  TakeTest.swift
//  NJRealtorExam
//
//  Created by user on 7/25/21.
//

import Foundation
import SwiftUI
import UIKit

struct takeTest: View {
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
            window.rootViewController = UIHostingController(rootView: appInstructions())
            window.makeKeyAndVisible()
        }
    }
    
    func gotoTakeTest() {
        if let window = UIApplication.shared.windows.first {
            // window.rootViewController = UIHostingController(rootView: TakeTest())
            window.makeKeyAndVisible()
        }
    }
    
    func gotoLeaderboard() {
        if let window = UIApplication.shared.windows.first {
            // window.rootViewController = UIHostingController(rootView: Leaderboard())
            window.makeKeyAndVisible()
        }
    }
    
    func gotoSettings() {
        if let window = UIApplication.shared.windows.first {
            // window.rootViewController = UIHostingController(rootView: Settings())
            window.makeKeyAndVisible()
        }
    }
    
    func gotoDevInfo() {
        if let window = UIApplication.shared.windows.first {
            // window.rootViewController = UIHostingController(rootView: DevInfo())
            window.makeKeyAndVisible()
        }
    }

    var body: some View {
        
        // place background image here !!
        // place background image here !!
        
        VStack(alignment: .leading, spacing: 0){
            
            Button(action: {
                gotoSplash()
                print("goto splash screen")
            }, label: {
                Text("< BACK <")
                    .padding(7)
                    .font(.system(size: 16))
                    .background(greenBtn)
                    .foregroundColor(.white)
            })
            
            Text(" ")
            
            Text("this is the appinstructions screen man !!")
            Text("this is the appinstructions screen man !!")
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
            
            Text(" ")
        }
    }
}
