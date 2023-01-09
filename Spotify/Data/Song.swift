//
//  Song.swift
//  Spotify
//
//  Created by Tedtya rady on 6/1/23.
//

import Foundation
import AVKit


struct Song: Identifiable, Decodable {
    
    var id:UUID {
        UUID.init()
    }
    
    let songName: String
    let duration: Double
    let albumnName: String
    let artistName: String
    let genreName: String
    let releaseDate: String
    let songImage: String
    let url: String
    

    static let DummySong: Song = .init(songName: "", duration: 4.0, albumnName: "Believe", artistName: "Justin Bieber", genreName: "Pop", releaseDate: "20 Jan 2015", songImage: "song", url: "love_yourself")
}

// MARK: - Extension for Constructable URL
extension Song {
    
    var constructedURL: URL {
        let bundleURL = Bundle.main.path(forResource: url, ofType: "mp3")
        return .init(fileURLWithPath: bundleURL!)
    }
    
}
