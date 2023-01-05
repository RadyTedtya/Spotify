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
            
            Image("carrr")
                .resizable()
                .frame(width: 350, height: 350)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            Text("Song name")
                .foregroundColor(Color.primaryColor)
            
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
            
            
            
            Spacer()
            
            TimingPlayerSectionView()
            
            Spacer()
            
            PlayerSectionView()
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
