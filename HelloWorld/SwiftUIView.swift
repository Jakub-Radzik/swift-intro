//
//  SwiftUIView.swift
//  HelloWorld
//
//  Created by Jakub Radzik on 25/06/2022.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868),
        span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
    )
    
    var body: some View {
        Map(coordinateRegion: $region)
            .overlay(Rectangle().stroke(.white, lineWidth: 5))
    }
}

struct TurtleRockView: View {
    var body: some View {
        VStack() {
            MapView()
                .frame(height: 300)
                .ignoresSafeArea(edges: .top)
            
            CircleView()
                .padding(.bottom, -180.0)
                .offset(y: -180)
            
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                HStack {
                    Text("Joshua Tree National Park")
                    Spacer()
                    Text("California")
                }
                Divider()
                Text("About")
                    .font(.title2)
                Text("Description")
                Spacer()
                
            }
            .padding()
            Spacer()
        }
        


    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        TurtleRockView()
    }
}
