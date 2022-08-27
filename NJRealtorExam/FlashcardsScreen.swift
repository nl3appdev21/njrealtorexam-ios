//
//  FlashcardsScreen.swift
//  NJRealtorExam
//
//  Created by user on 8/21/22.
//

import Foundation
import SwiftUI
import UIKit
import AVKit // new

struct FlashcardsScreenView: View {
    
    let greenBtn = Color(red: 76.0/255, green: 84.0/255, blue: 75.0/255)
    let blueBtn = Color(red: 53.0/255, green: 180.0/255, blue: 230.0/255)
    
    let url = URL(string: "https://www.youtube.com/watch?v=QV4_kVIf4V4")! // new
    private let playerStroke = AVPlayer(url:  Bundle.main.url(forResource: "strokefore", withExtension: "mp4")!)
    
    func gotoMenu() {
        if let window = UIApplication.shared.windows.first {
            window.rootViewController = UIHostingController(rootView: Menu())
            window.makeKeyAndVisible()
        }
    }
    
    var body: some View {
            
        Group{
            
            VStack{
                
            Text(" ")
            Text("NJ Realtor Exam App Flashcards Video")
                .bold()
                .font(.system(size: 26))
                .frame(maxWidth: .infinity, alignment: .center)
                .foregroundColor(.white)
            
            Spacer()
            
            // add video here
            
            VideoPlayer(player: AVPlayer (url: url),  // new
                        videoOverlay:{
                        Text("my new video")
                    .frame(width: 161, height: 61)
                    .background(Color.pink)
            })
            .scaledToFit()
             
            }
                
            // add video here
            
            // newer
            
            VStack{
                                
                AVPlayerControllerRepresented3(player: playerStroke)
                    .onAppear {
                    playerStroke.play()
                    }
            }
            
            // newer
                
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
