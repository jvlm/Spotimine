//
//  ContentView.swift
//  Spotimine
//
//  Created by Joao Melo on 18/04/23.
//

import SwiftUI

struct ContentView: View {
    var playlist = Playlist(id: 0, name: "JoaoFM", picture: "https://picsum.photos/200", ownerName: "joaovitor", ownerPicture: "https://picsum.photos/200", tracks: [Track(id: 0, title: "Yandel 150", artists: "Yandel, Feid", cover: "https://i.scdn.co/image/ab67616d0000b273444bab1a00d7bdb978bd8d70"), Track(id: 1, title:"Take my Breath - Live", artists: "The Weeknd", cover: "https://i.scdn.co/image/ab67616d0000b273308f9319a3d6f6737f43b3fc"), Track(id: 2, title:"Besties", artists: "Karol G", cover: "https://i.scdn.co/image/ab67616d0000b27382de1ca074ae63cb18fce335"), Track(id: 3, title:"Tití Me Preguntó", artists:"Bad Bunny", cover: "https://i.scdn.co/image/ab67616d0000b27349d694203245f241a1bcaa72"), Track(id: 4, title: "CUFF IT", artists: "Beyoncé", cover: "https://i.scdn.co/image/ab67616d0000b2730e58a0f8308c1ad403d105e7"), Track(id: 5, title: "Candy Rain", artists: "Soul For Real", cover: "https://i.scdn.co/image/ab67616d0000b27395838aa2462ce2b9933e2087"), Track(id: 6, title:"Cheatback", artists: "Chlöe, Future", cover: "https://i.scdn.co/image/ab67616d0000b2730b207265751693def1345c7e"), Track(id: 7, title:"Blind", artists: "SZA", cover: "https://i.scdn.co/image/ab67616d0000b27370dbc9f47669d120ad874ec1"), Track(id: 8, title:"Bad Habit", artists:"Steve Lacy", cover: "https://i.scdn.co/image/ab67616d0000b27368968350c2550e36d96344ee"), Track(id: 9, title: "POP!", artists: "Adanna Duru", cover: "https://i.scdn.co/image/ab67616d0000b27385314a5b2c12bc600431e330")])
    
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false)  {
                VStack  {
                    AsyncImage(url: URL(string: playlist.picture)) { image in image
                            .resizable()
                            .scaledToFill()
                            .frame(width: 250, height: 250)
                        
                    } placeholder: {
                    }
                    .padding(.vertical, 20.0)

                    Text(playlist.name)
                        .font(.largeTitle)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    HStack {
                        AsyncImage(url: URL(string: playlist.ownerPicture)) { image in image
                                .resizable()
                                .scaledToFill()
                                .frame(width: 40, height: 40)
                            
                        } placeholder: {
                        }
                        .clipShape(Circle())
                        Text(playlist.ownerName)
                    }
                    .padding(.top, -15)
                    .padding(.bottom)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    VStack {
                        ForEach(playlist.tracks){ track in
                            NavigationLink(destination: TrackView(track: track)){
                                HStack{
                                    AsyncImage(url: URL(string: track.cover)) { image in image
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 50, height: 50)
                                        
                                    } placeholder: {
                                    }
                                    VStack(alignment: .leading){
                                        Text(track.title)
                                        Text(track.artists)
                                            .fontWeight(.medium)
                                    }
                                    Spacer()
                                    Image(systemName: "ellipsis")
                                }
                                
                            }
                        }
                        Text("You might also like")
                            .font(.title3)
                            .padding(.top, 20)
                            .padding(.bottom, 25)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack{
                                AsyncImage(url: URL(string: "https://i.scdn.co/image/ab67706f0000000283829f7cdd2443271b6a6ec2")){ image in image
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 170, height: 170)
                                        .padding(.trailing, 5)
                                    
                                } placeholder: {
                                }
                                
                                AsyncImage(url: URL(string: "https://i.scdn.co/image/ab67706f00000002b839ce964d36ef83a835eb1c")){ image in image
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 170, height: 170)
                                        .padding(.trailing, 5)
                                    
                                } placeholder: {
                                }
                                AsyncImage(url: URL(string: "https://i.scdn.co/image/ab67706f000000024ac8cf7325d3565e1e75f58a")){ image in image
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 170, height: 170)
                                        .padding(.trailing, 5)
                                    
                                } placeholder: {
                                }
                            }
                        }
                    }
                }
                .padding(.horizontal)
            }
            .padding(.top)
            .background(Gradient(colors: [.blue,.black]))
            .foregroundColor(.white)
            .fontWeight(.bold)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
