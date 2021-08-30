//
//  SplashView.swift
//  NJRealtorExam
//
//  Created by user on 7/25/21.
//

import Foundation
import SwiftUI
import UIKit

var jsonData: [ExamItem] = []

struct SplashView: View {
    let greenBtn = Color(red: 76.0/255, green: 84.0/255, blue: 75.0/255)
    
    func gotoMenu() {
        if let window = UIApplication.shared.windows.first {
            window.rootViewController = UIHostingController(rootView: Menu())
            window.makeKeyAndVisible()
        }
    }
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 0){
            
            Text("this is the splash screen man can you dig it!!")
            Text("this is the splash screen man can you dig it!!")
            Text(" ")
            // place background image here !!
            Image ("nl3a00")
            // Text("place background image here !!")
            Text(" ")
            
            Button(action: {
                gotoMenu()
            }, label: {
                Text("goto menu")
                    .padding(7)
                    .font(.system(size: 16))
                    .background(greenBtn)
                    .foregroundColor(.white)
            })
            
            Text(" ")
        }
        .onAppear(){
            jsonData = LoadJsonData().examItem
        }
    }
}
