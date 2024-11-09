//
//  VideoPlayerView.swift
//  HIITFitnessApp
//
//  Created by realtanx on 2024/11/9.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    
    let fileName: String
    
    var body: some View {
        if let url = Bundle.main.url(forResource: fileName, withExtension: "mp4") {
            VideoPlayer(player: AVPlayer(url: url))
        }
        else {
            Text("Can't find file \(fileName).mp4")
                .foregroundColor(.red)
        }
    }
}

#Preview {
    VideoPlayerView(fileName: "step-up")
}
