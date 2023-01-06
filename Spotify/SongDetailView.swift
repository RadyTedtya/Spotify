//
//  SongDetailView.swift
//  Spotify
//
//  Created by Tedtya rady on 3/1/23.
//

import Foundation
import SwiftUI
import AVFoundation

struct SongDetailView: View {
    
    let song: Song
    @State public var currentTime: Float = 0
    @State public var isPlay: Bool = false
    @State var player: AVPlayer = .init(playerItem: nil)
    
    var body: some View {

        VStack {
            ZStack {
                
                Image("shadow")
                    .resizable()
                    .frame(width: 350, height: 350)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                
                
                VStack(spacing: 0) {
                    
                    Text(song.songName)
                        .foregroundColor(Color.white)
                        .font(.system(size: 25))
                    
                    
                    
                    HStack(spacing: 0) {
                        
                        Button {
                            print("Add")
                        } label: {
                            Image(systemName: "plus.app.fill")
                                .foregroundColor(Color.gray)
                        }
                        
                        Spacer()
                        
                        Button {
                            print("Add")
                        } label: {
                            Image(systemName: "list.bullet")
                                .foregroundColor(Color.gray)
                        }
                        
                    }
                    .padding(.horizontal, 100)
                    .frame(height: 35)
                    .frame(maxWidth: .infinity)
                    
                    
                    Text("Song Description")
                        .foregroundColor(Color.gray)
                    
                }
                .padding(.top, 300)
                
            }
            Spacer()
            
            ProgressView(duration: 10, progress: .constant(0))
            Spacer()
            
            PlayerToolView(isPlay: $isPlay, action: .init(onPlay: {
                player.play()
            }, onPause: {
                player.pause()
            }))
                .frame(maxWidth: .infinity)
                .frame(height: 150)
            
            Spacer()
            
        }
        .background(Color.primaryBackground)
        .onAppear {
            player = .init(playerItem: .init(url: song.constructedURL))
        }
    }
}

struct SongDetailView_Preview: PreviewProvider {
    static var previews: some View {
        SongDetailView(song: Song.DummySong)
    }
}
