//
//  FlashcardVideo.swift
//  NJRealtorExam
//
//  Created by user on 8/23/22.
//

import Foundation

//
//  HelpStrokeScreen.swift
//  Skill Help Stroke Screen
//
//  Created by user on 6/6/21.
//

import SwiftUI
import AVKit

struct HelpStrokeScreenView: View {
    
    let greenBtn = Color(red: 76.0/255, green: 84.0/255, blue: 75.0/255)
    private let playerStroke = AVPlayer(url:  Bundle.main.url(forResource: "strokefore", withExtension: "mp4")!)
    private let playerStroke2Way = AVPlayer(url:  Bundle.main.url(forResource: "strokebothways", withExtension: "mp4")!)
    @State var isNavigationBarHidden: Bool = true
    @State var way1BtnVisible = false
    @State var way2BtnVisible = true
    @State var repeatBtn = true
    
    init() {
        let navBarApperance = UINavigationBarAppearance()
        navBarApperance.titleTextAttributes = [.foregroundColor: UIColor.systemBackground]
        navBarApperance.largeTitleTextAttributes = [.foregroundColor: UIColor.systemBackground]
        // navBarApperance.shadowColor = .clear
        // navBarApperance.backgroundColor = UIColor.black
        // UINavigationBar.appearance().standardAppearance = navBarApperance
        // UINavigationBar.appearance().compactAppearance = navBarApperance
        // UINavigationBar.appearance().scrollEdgeAppearance = navBarApperance
        UINavigationBar.appearance().tintColor = UIColor.systemPurple
    }
    
    var body: some View {
            
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            VStack{
                Text(" ")
                Text("Practice Casting: Stroke 1-way")
                    .font(.title)
                    .foregroundColor(.white)
                    .bold()
                Text(" ")
            
            VStack{
                Text("1. Start your stroke slowly.")
                    .foregroundColor(.white)
                    .font(.system(size: 15))
                Text(" ")
                Text("2. Accelerate smoothly to a strong stop.")
                    .foregroundColor(.white)
                    .font(.system(size: 15))
                Text(" ")
                Text("3. Listen to the sound you made.")
                    .foregroundColor(.white)
                    .font(.system(size: 15))
                Text(" ")
                Text("4. Practice until you do it without thinking ")
                    .foregroundColor(.white)
                    .font(.system(size: 15))
                Text(" and it sounds right every time. ")
                    .foregroundColor(.white)
                    .font(.system(size: 15))
            }
                
                VStack{
                                    
                    AVPlayerControllerRepresented3(player: playerStroke)
                        .onAppear {
                        playerStroke.play()
                        }
                }
                
                /*
                VStack{
                                    
                    AVPlayerControllerRepresented4(player: playerStroke2Ways)
                        .onAppear {
                        playerStroke2Ways.play()
                        }
                }
                */
                
            // Spacer()
                
                HStack {
                    
                    if way1BtnVisible{
                        Button(action: {  // 1-way button
                            print("1-way button")
                            print("way1BtnVisible")
                            print("way2BtnVisible")
                            print("repeatBtn")
                            way1BtnVisible = false
                            way2BtnVisible = true
                            repeatBtn = true
                        }) {
                        Text("1-way")
                            .padding(5)
                            .font(.system(size: 21))
                            .background(greenBtn)
                            .foregroundColor(.white)
                        }
                    }
                
                    
                    if repeatBtn {
                        Button(action: {  // repeat 1-way
                            print("1-way is on")
                            print("repeatBtn")
                            // print("replay 1-way video please")
                            replay1WayVideo()
                            repeatBtn = true
                        }) {
                            Text("repeat 1-way")
                            .padding(10)
                                .background(greenBtn)
                            .foregroundColor(.white)
                        }
                    }
                }
                
                Text(" ")
                
            }
        }
    }
}

struct AVPlayerControllerRepresented3 : UIViewControllerRepresentable {
    var player : AVPlayer
    
    func makeUIViewController(context: Context) -> AVPlayerViewController {
        let controller = AVPlayerViewController()
        controller.player = player
        controller.showsPlaybackControls = false
        return controller
    }
    
    func updateUIViewController(_ uiViewController: AVPlayerViewController, context: Context) {
        
    }
}

struct AVPlayerControllerRepresented4 : UIViewControllerRepresentable {
    var player : AVPlayer
    
    func makeUIViewController(context: Context) -> AVPlayerViewController {
        let controller = AVPlayerViewController()
        controller.player = player
        controller.showsPlaybackControls = false
        return controller
    }
    
    func updateUIViewController(_ uiViewController: AVPlayerViewController, context: Context) {
        
    }
}

func replay1WayVideo() {
    print("replay the 1-way video please")
}
