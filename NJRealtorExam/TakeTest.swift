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
