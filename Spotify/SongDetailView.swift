//
//  SongDetailView.swift
//  Spotify
//
//  Created by Tedtya rady on 3/1/23.
//

import Foundation
import SwiftUI

struct SongDetailView: View {
    
    var body: some View {
        
        
        VStack {
            
            ZStack {
                
                Image("shadow")
                    .resizable()
                    .frame(width: 350, height: 350)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                
                
                VStack(spacing: 0) {
                    
                    Text("Song name")
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
            
            PlayingView()
            Spacer()
            
            MusicPlayerView()
                .frame(maxWidth: .infinity)
                .frame(height: 150)
            
            Spacer()
            
        }
        .background(Color.primaryBackground)
        
        
    }
}

struct SongDetailView_Preview: PreviewProvider {
    static var previews: some View {
        SongDetailView()
    }
}
