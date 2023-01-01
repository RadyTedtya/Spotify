//
//  ContentView.swift
//  Spotify
//
//  Created by Tedtya rady on 31/12/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView {
            VStack {
                Image("carrr")
                    .resizable()
                    .frame(maxWidth: .infinity)
                    .frame(height: 200)
                
                HStack {
                    Text("Great Good Fine OK")
                        .padding(.horizontal)
                    
                    Image(systemName: "checkmark.shield.fill")
                        .foregroundColor(Color.blue)
                    Spacer()
                    
                    Text("Subscribe")
                        .padding(10)
                        .background(Color.blue)
                        .foregroundColor(Color.white)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .padding(.horizontal)
                }
                .frame(maxWidth: .infinity)


            
                
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
            
            .navigationBarItems(trailing:
                                    Image(systemName: "list.bullet")
                                    .foregroundColor(Color.red)
            )
        }
    }
}

struct SongCardView: View {
    var body: some View {
            VStack {
                Image("carrr")
                    .resizable()
                    .frame(width: 150, height: 150)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            
                HStack {
                    Text("1 Song")
                        .foregroundColor(Color.gray)
                        .padding()
                    
                    Spacer()
                    
                    Text("Find Yourself")
                    Spacer()
                    
                    Text("2017")
                        .padding()
                        
                }
            }
            .padding()
            .font(.system(size: 12))
            .frame(width: 200, height: 250, alignment: .center)
            
        
    }
}

struct TopSongView: View {
    var body: some View {
    
        HStack {
            //Ranking
            Text("1")
                .padding(.leading)
            
            //Song name
            Text("Love Yourself")
                .padding(.horizontal)
            Spacer()
            
            //Duration
            Text("3:57")
                .padding(.trailing)
        }
        .padding()
        .background(Color.gray.opacity(0.1))
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }

}



//struct SongCard_Previews: PreviewProvider {
//    static var previews: some View {
//        SongCard()
//    }
//}
