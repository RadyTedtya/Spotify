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
                Image(systemName: "photo")
                    .frame(maxWidth: .infinity)
                    .frame(height: 150)
                
                HStack {
                    Text("Great Good Fine OK")
                        .padding(.horizontal)
                    
//                    Image(systemName: "checkmark.shield.fill")
//                        .foregroundColor(Color.blue)
                    Spacer()
                    
                    Text("Subscribe")
                        .padding(10)
                        .background(Color.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .padding(.horizontal)
                }
                .frame(maxWidth: .infinity)


            
                HStack {
                    ScrollView(.horizontal) {
                        SongCardView()
                        
                        
                    }
                    .frame(height: 350)
                }
                
                
                VStack {
                    ScrollView {
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
                Image(systemName: "photo")
                    .resizable()
                    .frame(width: 120, height: 75)
            
                HStack {
                    Text("1 Song")
                        .foregroundColor(Color.red)
                        .padding()
//                        .font(.system(size: 12))
                    
                    Spacer()
                    
                    Text("Find Yourself")
                    Spacer()
                    
                    Text("2017")
                        .padding()
                }
            }
            .font(.system(size: 12))
            .frame(width: 200, height: 200, alignment: .center)
        
        
        
        
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
        .background(Color.gray)
        
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
