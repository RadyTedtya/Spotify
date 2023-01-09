//
//  ArtistView.swift
//  Spotify
//
//  Created by Tedtya rady on 1/1/23.
//

import Foundation
import SwiftUI


struct ArtistView: View {
    
    var body: some View {
        
        NavigationView {
            
            VStack {
                Image("image")
                    .resizable()
                    .frame(maxWidth: .infinity)
                    .frame(height: 200)
                
                Spacer()
                
                HStack {
                    Text("Great Good Fine OK")
                        .padding(.horizontal)
                        .foregroundColor(Color.secondaryColor)
                    
                    Image(systemName: "checkmark.shield.fill")
                        .foregroundColor(Color.primaryColor)
                    Spacer()
                    
                    Button {
                        print("Subscribe")
                    } label: {
                        Text("Subscribe")
                            .padding(10)
                            .background(Color.primaryColor)
                            .frame(height: 30)
                            .foregroundColor(Color.secondaryColor)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                            
                    }
                    .padding(.trailing)
                    
                    
                    
                }
                .frame(maxWidth: .infinity)
                
                Spacer()
                
                
                ScrollView(.horizontal) {
                    HStack {
                        SongCardView()
                        SongCardView()
                        SongCardView()
                        SongCardView()
                        SongCardView()
                        
                    }
                }
                .frame(maxWidth: .infinity)
                
                HStack {
                    Spacer()
                    Text("Explorer")
                        .foregroundColor(Color.primaryColor)
                        .font(.system(size: 15))
                }
                .padding(.trailing)
                
                Spacer()
                
                
                HStack {
                    VStack {
                        Text("Track   ")
                            .foregroundColor(Color.primaryColor)
                            .rotationEffect(Angle(degrees:270 ))
                            .padding(.bottom)
                            .padding(.bottom)
                        
                        Text("Latest")
                            .foregroundColor(Color.secondaryColor)
                            .rotationEffect(Angle(degrees: 270))
                    }
                    .frame(maxHeight: .infinity)
                    
                    ScrollView {
                        VStack {
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
            .navigationBarItems(trailing:
                                    Image(systemName: "list.bullet")
                                    .foregroundColor(Color.secondaryColor)
                                
            )
        }
    }
    
    
}


struct ArtistView_Previews: PreviewProvider {
    static var previews: some View {
        ArtistView()
    }
    
}
