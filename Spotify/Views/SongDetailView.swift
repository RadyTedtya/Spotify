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
    
    @State public var progress: Double = 0
    @State public var currentTime: Double = 0
    @State public var isPlay: Bool = false
    @State public var song: Song = Song.DummySong
    @State public var songDuration: Double = 0
    @State var player: AVPlayer = .init(playerItem: nil)
    var body: some View {
        
        VStack(alignment: .center) {
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
            
            ProgressView(song: $song, progress: $progress, isPlay: $isPlay, duration: $songDuration)
            
            PlayerToolView(isPlay: $isPlay, action: .init(onPlayPauseClicked: { isPlay in
                isPlay ? player.play() : player.pause()
            }))
                .frame(maxWidth: .infinity)
                .frame(height: 150)
            
            Spacer()
            
        }
        .background(Color.primaryBackground)
        .onAppear {
            player = .init(playerItem: .init(url: song.constructedURL))
            player.addPeriodicTimeObserver(forInterval: CMTime(value: CMTimeValue(1), timescale: 1), queue: DispatchQueue.main) { (progressTime) in
                print("periodic time: \(CMTimeGetSeconds(progressTime))")
                guard let duration = player.currentItem?.duration else {
                    return
                }
                songDuration = duration.seconds
                progress = (progressTime.seconds / duration.seconds)
            }
        }
    }
    
}

struct SongDetailView_Preview: PreviewProvider {
    static var previews: some View {
        SongDetailView(song: Song.DummySong)
    }
}
