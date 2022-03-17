//
//  ContentView.swift
//  TableView-SwiftUI
//
//  Created by Ahmed Sadiq on 14/03/2022.
//

import SwiftUI

struct VideoListView: View {
    var videos: [Video] = VideoList.topTen
    var body: some View {
        NavigationView {
            List(videos, id: \.id) { video in
                NavigationLink {
                    VideoDetailView(video: video)
                } label: {
                    VideoCell(video: video)
                }
            }
            .listStyle(.plain)
            .navigationTitle("Top Videos")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
