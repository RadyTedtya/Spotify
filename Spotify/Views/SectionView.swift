//
//  SectionView.swift
//  Spotify
//
//  Created by Tedtya rady on 4/1/23.
//

import Foundation
import SwiftUI
import AVFoundation


struct ShuffleSectionView: View {
    @State private var offLine = false
    var body: some View{
        HStack {
            
            Image(systemName: "shuffle")
                .foregroundColor(Color.cyan)
            
            Spacer()
            
            Toggle(isOn: $offLine) {
                Text("Offline")
                    .frame(maxWidth: .infinity, alignment: .trailing)
            }
            .foregroundColor(Color.white)
        }
        .frame(maxWidth: .infinity)
        .padding()
    }
}


struct TopSongView: View {
    var body: some View {
        
        HStack {
            //Ranking
            Text("1")
                .padding(.leading)
                .foregroundColor(Color.white)
            
            //Song name
            Text("Love Yourself")
                .padding(.horizontal)
                .foregroundColor(Color.white)
            Spacer()
            
            //Duration
            Text("3:57")
                .padding(.trailing)
                .foregroundColor(Color.white)
        }
        .padding()
        .background(Color.gray.opacity(0.1))
        
    }
}


struct SongCardView: View {
    var body: some View {
        VStack {
            Image("img")
                .resizable()
                .frame(width: 150, height: 150)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            HStack {
                Text("1 Song")
                    .foregroundColor(Color.gray)
                    .padding()
                
                Spacer()
                
                Text("Find Yourself")
                    .foregroundColor(Color.white)
                Spacer()
                
                Text("2017")
                    .foregroundColor(Color.gray)
                    .padding()
                
            }
        }
        .padding()
        .font(.system(size: 12))
        .frame(width: 200, height: 250, alignment: .center)
    }
}

struct OnlySongCardView: View {
    var body: some View {
        VStack {
            Image("img")
                .resizable()
                .frame(width: 150, height: 150)
                .clipShape(RoundedRectangle(cornerRadius: 10))
        }
    }
}

struct PlayerToolAction {
    let onPlayPauseClicked: (_ isPlay: Bool) -> ()
}

struct PlayerToolView: View {
    
    @Binding var isPlay: Bool
    let action: PlayerToolAction
    
    
    var body: some View {
        
        HStack(spacing: 25) {
            Button (action: {
                
            }) {
                Image(systemName: "shuffle")
                    .foregroundColor(Color.primaryColor)
                    .font(.system(size: 30))
            }
            
            Button(action: {
                
            }) {
                Image(systemName: "backward.end.fill")
                    .foregroundColor(Color.secondaryColor)
                    .font(.system(size: 30))
            }
            
            Button(action: {
                isPlay = isPlay ? false : true
                action.onPlayPauseClicked(isPlay)
                
            }) {
                Image(systemName: isPlay ? "pause.circle.fill" : "play.circle.fill")
                    .foregroundColor(Color.primaryColor)
                    .font(.system(size: 70))
            }
            
            Button(action: {
                
            }) {
                Image(systemName: "forward.end.fill")
                    .foregroundColor(Color.secondaryColor)
                    .font(.system(size: 30))
            }
            
            Button(action: {
                
            }) {
                Image(systemName: "repeat")
                    .foregroundColor(Color.primaryColor)
                    .font(.system(size: 30))
            }
            
            
        }
        .background(Color.black)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding(.horizontal, 20)
    }
}


struct ProgressView: View {
    
    @Binding var song: Song
    @Binding var progress: Double
    @Binding var isPlay: Bool
    @Binding var duration: Double
    
    var currentTime: Double {
        return duration - progress
    }
    private let _progressWidth: CGFloat = 250
    
    var body: some View {
        HStack {
            Text(String(progress))
                .foregroundColor(Color.gray)
            ZStack(alignment: .leading) {
                Color.gray
                    .frame(width: 200, height: 3)
                    .clipShape(RoundedRectangle(cornerRadius: 1.5))
                
                LinearGradient(colors: [Color.init(hex: 0x0098FF), Color.init(hex: 0x2EC9A8)] , startPoint: .leading, endPoint: .trailing)
                    .frame(width: progress * _progressWidth, height: 4, alignment: .trailing)
                    .clipShape(RoundedRectangle(cornerRadius: 2))
                
                Circle()
                    .foregroundColor(Color.primaryColor)
                    .frame(width: 8, height: 8)
                    .offset(x: (progress * _progressWidth) - 8)
                
            }
            
            
            Text(String(duration))
                .foregroundColor(Color.gray)
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity)
        .background(Color.black)
    }
}

//struct ProgressView_Preview: PreviewProvider {
//    static var previews: some View {
//        ProgressView(song: .constant(Song.DummySong), progress: .constant(0.1), isPlay: .constant(false))
//    }
//}


//struct MusicPlayerView_Preview: PreviewProvider {
//    static var previews: some View {
//        MusicPlayerView()
//    }
//}
