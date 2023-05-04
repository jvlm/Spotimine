//
//  Playlist.swift
//  Spotimine
//
//  Created by Joao Melo on 18/04/23.
//

import Foundation

struct Playlist: Identifiable {
    
    var id: Int
    var name: String
    var picture: String
    var ownerName: String
    var ownerPicture: String
    var tracks: [Track]
    //var similarPlaylists: [Playlist]
}
