//
//  ExploreView.swift
//  Spotify
//
//  Created by Tedtya rady on 1/1/23.
//

import Foundation
import SwiftUI

struct ExploreView: View {
    
    var body: some View {
    
        NavigationView {
        
            ScrollView {
                VStack {
                    
                    ZStack {
                    
                        Image("image1")
                            .resizable()
                            .frame(height: 200)
                        
                        HStack {
                            VStack {
                                Spacer()
                                Image("logo")
                                    .resizable()
                                    .frame(width: 100, height: 50, alignment: .bottom)
                            }
                            .padding()
                            
                            Spacer()
                            
                            VStack {
                                Text("New Single")
                                    .foregroundColor(Color.primaryColor)
                                
                                Text("Song Name")
                                    .foregroundColor(Color.secondaryColor)
                            }
                            Spacer()
                            
                            VStack {
                                Image("Songggg")
                                    .resizable()
                                    .font(.system(size: 7))
                                    .frame(width: 80, height: 80)
                                
                                Button {
                                    
                                } label: {
                                     Text("Listen")
                                        .background(Color.primaryColor)
                                        .frame(width: 20, height: 30)
                                        .foregroundColor(Color.secondaryColor)
                                        .clipShape(RoundedRectangle(cornerRadius: 20))
                                }
                            }
                            .frame(width: 100)
                            .padding()
                        }
                        
                    }
                    
                    
                    
                    
                    Spacer()
                    
                    HStack {
                        Text("Explorer")
                            .foregroundColor(Color.white)
                            .font(.system(size: 28))
                            .padding(.trailing)
                        Spacer()
                    }
                    
                    ScrollView(.horizontal) {
                        HStack {
                            SongCardView()
                            SongCardView()
                            SongCardView()
                            SongCardView()
                        }
                    }
                    
                    HStack {
                        Spacer()
                        Text("Explorer")
                            .foregroundColor(Color.cyan)
                            .font(.system(size: 15))
                    }
                    
                    HStack {
                        Text("Top Chart")
                            .foregroundColor(Color.white)
                            .font(.system(size: 28))
                        Spacer()
                    }
                    Spacer()
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

struct Explore_Preview: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}


