//
//  ContentView.swift
//  pocvideo
//
//  Created by helton souza silveira on 23/03/25.
//

import SwiftUI
import AVKit
import CoreData

struct ContentView: View {
    @State var player = AVPlayer(url: Bundle.main.url(forResource: "videoexercise", withExtension: "mp4")!)
    
    @State var isPlaying = false
    
    
    var body: some View {
        ZStack{
            VideoPlayer(player:player)
            
//            Text("Hello, World!")
            Button {
                isPlaying ? player.pause() : player.play()
                isPlaying.toggle()
                player.seek(to: .zero)
            } label: {
//                Image(systemName: isPlaying ? "stop" : "play").padding(.top, 240).font(.system(size: 70))
    
            }
        }
    }
    
}

struct contentView: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


