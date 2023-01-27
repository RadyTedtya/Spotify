//
//  ContentView.swift
//  Spotify
//
//  Created by Tedtya rady on 31/12/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        TabView() {
            ExploreView()
                .tabItem {
                    Label("Explore", systemImage: "globe")
                        .foregroundColor(Color.primaryBackground)
                }
            
            ArtistView()
                .tabItem {
                    Label("Artist", systemImage: "music.note.house.fill")
                        .foregroundColor(Color.primaryBackground)
                }
            
            PlayerView()
                .tabItem {
                    Label("Player", systemImage: "magnifyingglass")
                        .foregroundColor(Color.primaryBackground)
                }
            
            SongDetailView(song: Song.DummySong)
                .tabItem {
                    Label("Detail", systemImage: "music.note.list")
                        .foregroundColor(Color.primaryBackground)
                }
        }
        .onAppear {
            UITabBar.appearance().barTintColor = UIColor(Color.primaryBackground)
        }
        .accentColor(Color.primaryColor)
    }
    
}


