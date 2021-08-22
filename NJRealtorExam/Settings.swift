//
//  Settings.swift
//  NJRealtorExam
//
//  Created by user on 7/25/21.
//

import Foundation
import SwiftUI
import UIKit

struct Settings: View {
    @State private var status1 = false
    @State private var status2 = false
    @State private var status3 = false
    @State private var status4 = false
    @State private var status5 = false
    @State private var status6 = false
    @State private var status7 = false
    @State private var status8 = false
    @State private var status9 = false
    
    let greenBtn = Color(red: 76.0/255, green: 84.0/255, blue: 75.0/255)
    let blueBtn = Color(red: 53.0/255, green: 180.0/255, blue: 230.0/255)
    
    // toggle switchs
    
    /*
      ("Randomize Flashcards ")
      ("Advertising Cards ")
      ("Commission Cards ")
      ("Law Cards ")
      ("Mortgage Cards ")
      ("New Type Cards ")
      ("Ownership Cards ")
    */
    
    func gotoMenu() {
        if let window = UIApplication.shared.windows.first {
            window.rootViewController = UIHostingController(rootView: Menu())
            window.makeKeyAndVisible()
        }
    }

    var body: some View {
            
        Group{
            
            Text(" ")
            Text("Settings")
                .bold()
                .font(.system(size: 26))
                .frame(maxWidth: .infinity, alignment: .center)
                .foregroundColor(.white)
            
            Image("changingears00")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity, alignment: .center)
            // Text(" ")
            
            VStack{
                
                Divider()
                    .background(Color.black)
                
                Toggle(isOn: $status1) {
                            Text("Rand")
                        }
                        .toggleStyle(SwitchToggleStyle())
                        .font(.system(size: 17))
                        .foregroundColor(.white)
                        .padding(8)
                
                Divider()
                    .background(Color.black)
                
                Toggle(isOn: $status2) {
                            Text("new")
                        }
                        .toggleStyle(SwitchToggleStyle())
                        .font(.system(size: 17))
                        .foregroundColor(.white)
                        .padding(8)
                Toggle(isOn: $status3) {
                            Text("math")
                        }
                        .toggleStyle(SwitchToggleStyle())
                        .font(.system(size: 17))
                        .foregroundColor(.white)
                        .padding(8)
                
                Toggle(isOn: $status4) {
                            Text("law")
                        }
                        .toggleStyle(SwitchToggleStyle())
                        .font(.system(size: 17))
                        .foregroundColor(.white)
                        .padding(8)
                
                Toggle(isOn: $status5) {
                            Text("commis")
                        }
                        .toggleStyle(SwitchToggleStyle())
                        .font(.system(size: 17))
                        .foregroundColor(.white)
                        .padding(8)
                
                Toggle(isOn: $status6) {
                            Text("ads")
                        }
                        .toggleStyle(SwitchToggleStyle())
                        .font(.system(size: 17))
                        .foregroundColor(.white)
                        .padding(8)
                
                Toggle(isOn: $status7) {
                            Text("own")
                        }
                        .toggleStyle(SwitchToggleStyle())
                        .font(.system(size: 17))
                        .foregroundColor(.white)
                        .padding(8)
                
                Divider()
                    .background(Color.black)
                
            }//.frame(alignment: .center)
             //.padding(88)
            
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
            
        }.background(Color.gray)
        
    }
}
