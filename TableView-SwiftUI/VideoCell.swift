//
//  VideoCell.swift
//  TableView-SwiftUI
//
//  Created by Ahmed Sadiq on 14/03/2022.
//

import SwiftUI

struct VideoCell: View {
    var video: Video
    var body: some View {
        HStack {
            Image(video.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 70.0)
                .cornerRadius(4)
                .padding(.vertical, 5)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(video.title)
                    .fontWeight(.semibold)
                    .lineLimit(2)
                    .minimumScaleFactor(0.5)
                
                Text(video.uploadDate)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
    }
}
