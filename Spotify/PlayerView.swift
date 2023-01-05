//
//  Player.swift
//  Spotify
//
//  Created by Tedtya rady on 3/1/23.
//

import Foundation
import SwiftUI

struct PlayerView: View {
    
    var body: some View {
        
        NavigationView {
            ScrollView {
                VStack {
                    ZStack(alignment: .bottom) {
                        Image("shadow")
                            .resizable()
                            .scaledToFill()
                            .frame(height: 244.17)
                
                        VStack {
                            Button {
                            } label: {
                                Image(systemName: "list.dash")
                                    .foregroundColor(Color.secondaryColor)
                            }
                            
                            Text("Description")
                                .padding(.top)
                                .foregroundColor(Color.gray)
                            Button {
                                print("add to library")
                            } label: {
                                Text("Add to Library")
                                    .padding(10)
                                    .background(Color.primaryColor)
                                    .frame(height: 30)
                                    .foregroundColor(Color.secondaryColor)
                                    .clipShape(RoundedRectangle(cornerRadius: 20))
                            }
                        }
                        
                    }
                    .frame(height: 300)
                    
                    
                    Spacer()
                    
                    ShuffleSectionView()
                    
                    HStack(alignment: .top) {
                        
                        Text("Track List ")
                            .frame(height: 600)
                            .foregroundColor(Color.cyan)
                            .rotationEffect(Angle(degrees:270 ))
                            .lineLimit(1)
                            .frame(width: 50)
                        
                        VStack {
                            TopSongView()
                            TopSongView()
                            TopSongView()
                            TopSongView()
                            TopSongView()
                            TopSongView()
                            TopSongView()
                            TopSongView()
                            TopSongView()
                            TopSongView()
                            
                        }
                    }
                    
                }
            }
            .background(Color.primaryBackground)
            .frame(maxWidth: .infinity)
            .navigationBarItems(trailing:
                                    Image(systemName: "list.bullet")
                                    .foregroundColor(Color.secondaryColor)
                                
            )
        }
    }
}

struct PlayerView_Preview: PreviewProvider {
    static var previews: some View {
        PlayerView()
    }
}
