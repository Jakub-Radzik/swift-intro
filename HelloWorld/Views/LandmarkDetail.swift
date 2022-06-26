//
//  Detail.swift
//  HelloWorld
//
//  Created by Jakub Radzik on 26/06/2022.
//

import SwiftUI
import MapKit

struct LandmarkDetail: View {
    var landmark: Landmark
    
    var body: some View {
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300)
                .ignoresSafeArea(edges: .top)
            
            CircleImage(image: landmark.image)
                .padding(.bottom, -180.0)
                .offset(y: -180)
            
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                HStack {
                    Text(landmark.park)
                    Spacer()
                    Text(landmark.state)
                }
                Divider()
                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
                Spacer()
                
            }
            .padding()
            Spacer()
        }
        .ignoresSafeArea()
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
        
    }
}

struct Detail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarks[2])
    }
}
