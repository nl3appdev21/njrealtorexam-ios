//
//  FailedTest.swift
//  NJRealtorExam
//
//  Created by user on 7/25/21.
//

import Foundation
import SwiftUI
import UIKit

struct FailedTest: View {
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

        var body: some View {
            
            Group{
            
            GeometryReader { geo in
                Image("redquitbtn")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(21)
                    .frame(width: geo.size.width)
                    .background(Color.gray)
            }
            
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
                    gotoTakeTest()
                }, label: {
                    Text("goto taketest")
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
