//
//  DevInfo.swift
//  NJRealtorExam
//
//  Created by user on 7/25/21.
//

import Foundation
import SwiftUI
import UIKit

struct DevInfo: View {
 
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
            Text("Dev Info")
                .bold()
                .font(.system(size: 26))
                .frame(maxWidth: .infinity, alignment: .center)
                .foregroundColor(.white)
            
            Image("nl3a00")  // use = ("nashlogo") or ("nl3a00")
                .resizable()
                .scaledToFit()
                // .frame(maxWidth: .infinity, alignment: .center)
            Text("")
            
            VStack{
                
                Text("CREDITS")
                
                Text(" ")
                
                Text("CONCEPT")
                Text("NJ Realtor Exam: Design Concept")
                Text("Nash Ingram: Lead Developer")
                Text("Dex DFX: Consultant")
                Text(" ")
                
                Text("Version Name: 00.00")
           
            }.padding(3)
            .frame(maxWidth: .infinity, alignment: .center)
            .foregroundColor(.white)
            
            VStack{
                
                Text("Copyright @ 2019 - 2021")
                Text(" ")
                
                Text("NL3 Solutions")
                Text("NJ Real Estate Exam")
                Text(" ")
                
                Text("For support email:")
                Text("Nash@NL3Solutions.com")
                Text(" ")
                Link("Visit: NL3Solutions website", destination: URL(string: "https://www.NL3Solutions.com")!)
                // Link("www.NL3Solutions.com", destination: URL(string: "https://www.NL3Solutions.com")!)
                    .font(.system(size: 19))
                    .foregroundColor(.blue)
                Text(" ")
           
            }.padding(3)
             .frame(maxWidth: .infinity, alignment: .center)
             .foregroundColor(.white)
            
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
