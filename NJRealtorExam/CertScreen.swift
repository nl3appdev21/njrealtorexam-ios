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
    let greenBtn = Color(red: 76.0/255, green: 84.0/255, blue: 75.0/255)

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
            // window.rootViewController = UIHostingController(rootView: Leaderboard())
            window.makeKeyAndVisible()
        }
    }

    var body: some View {
        
        // place background image here !!
        // place background image here !!
        
        VStack(alignment: .leading, spacing: 0){
            
            Button(action: {
                gotoMenu()
            }, label: {
                Text("< BACK <")
                    .padding(7)
                    .font(.system(size: 16))
                    .background(greenBtn)
                    .foregroundColor(.white)
            })
            
            Text(" ")
            
            Text("this is the certscreen man !!")
            Text("this is the certscreen man !!")
            Text(" ")
            Text("place background image here !!")
            Text(" ")
            
            Button(action: {
                gotoTakeTest()
            }, label: {
                Text("goto menu")
                    .padding(7)
                    .font(.system(size: 16))
                    .background(greenBtn)
                    .foregroundColor(.white)
            })
            
            Text(" ")
            
            Button(action: {
                gotoLeaderboard()
            }, label: {
                Text("goto submit")
                    .padding(7)
                    .font(.system(size: 16))
                    .background(greenBtn)
                    .foregroundColor(.white)
            })
            
        }
    }
}
