//
//  TrackView.swift
//  Spotimine
//
//  Created by Joao Melo on 18/04/23.
//

import SwiftUI

struct TrackView: View {
    var track = Track(id: 0, title: "Tití Me Preguntó", artists: "Bad Bunny", cover: "https://i.scdn.co/image/ab67616d0000b27349d694203245f241a1bcaa72")
    var body: some View {
        ScrollView  {
            VStack  {
                AsyncImage(url: URL(string: track.cover)){ image in
                    image
                        .resizable()
                        .scaledToFill()
                        .frame(width: 250, height: 250)
                    
                } placeholder: {
                }
                .padding(.vertical, 60)
                Text(track.title)
                    .font(.title2)
                Text(track.artists)
                    .fontWeight(.regular)
                    .padding(.bottom, 50)
                HStack {
                    Image(systemName: "shuffle")
                        .resizable()
                        .frame(width: 50, height: 50)
                    Spacer()
                    Image(systemName: "backward.end.fill")
                        .resizable()
                        .frame(width: 50, height: 50)
                    Spacer()
                    Image(systemName: "play.fill")
                        .resizable()
                        .frame(width: 50, height: 50)
                    Spacer()
                    Image(systemName: "forward.end.fill")
                        .resizable()
                        .frame(width: 50, height: 50)
                    Spacer()
                    Image(systemName: "repeat")
                        .resizable()
                        .frame(width: 50, height: 50)
                }
                .padding(.horizontal)
            }
        }
        .frame(maxWidth: .infinity, alignment: .center)
        .background(Gradient(colors: [.blue,.black]))
        .foregroundColor(.white)
        .fontWeight(.bold)
    }
}

struct TrackView_Previews: PreviewProvider {
    static var previews: some View {
        TrackView()
    }
}
