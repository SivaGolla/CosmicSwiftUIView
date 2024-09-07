//
//  MediaView.swift
//  CosmicSwiftUIView
//
//  Created by Venkata Sivannarayana Golla on 07/09/24.
//

import SwiftUI

struct MediaView: View {
    
    @Binding var mediaItem: CosmicSnapshot
    
    var body: some View {
        VStack {
            ScrollView {
                // Image Section
                AsyncImage(url: URL(string: mediaItem.hdUrl!)!) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .cornerRadius(5)
                    
                } placeholder: {
                    ProgressView()
                }
                
                VStack {
                    // Title
                    Text(mediaItem.title)
                        .font(.title)
                        .multilineTextAlignment(.center)
                    
                    // Description
                    Text(mediaItem.explanation)
                        .font(.body)
                        .multilineTextAlignment(.leading)
                }
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    @State var item = CosmicSnapshot(title: "Quarter Moon and Sister Stars",
                              dateText: "2024-09-03",
                              explanation: "Nine days ago, two quite different sky icons were imaged rising together. Specifically, Earth's Moon shared the eastern sky with the sister stars of the Pleiades cluster, as viewed from Alberta, Canada.  Astronomical images of the well-known Pleiades often show the star cluster's alluring blue reflection nebulas, but here they are washed-out by the orange moonrise sky. The half-lit Moon, known as a quarter moon, is overexposed, although the outline of the dim lunar night side can be seen by illuminating earthshine, light first reflected from the Earth. The featured image is a composite of eight successive exposures with brightnesses adjusted to match what the human eye would see.  The Moon passes nearly -- or directly -- in front of the Pleaides once a month.",
                              mediaType: .image,
                              url: "https://apod.nasa.gov/apod/image/2409/MoonPleiades_Dyer_960.jpg",
                              hdUrl: "https://apod.nasa.gov/apod/image/2409/MoonPleiades_Dyer_2048.jpg",
                              thumbnailUrl: "")
    
    return MediaView(mediaItem: $item)
}
