//
//  FlashcardVideo.swift
//  NJRealtorExam
//
//  Created by user on 8/23/22.
//

import Foundation
import SwiftUI
import AVKit

struct FlashcardVideo: View {
    
    let greenBtn = Color(red: 76.0/255, green: 84.0/255, blue: 75.0/255)
     
    var body: some View {
        Text("   ")
    }
}

// new avp1
struct AVPlayerControllerRepresented1 : UIViewControllerRepresentable {
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
// new avp1
