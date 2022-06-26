//
//  SwiftUIView.swift
//  HelloWorld
//
//  Created by Jakub Radzik on 25/06/2022.
//

import SwiftUI
import MapKit


struct TurtleRockView: View {
    var body: some View {
        VStack() {
            MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
                .frame(height: 300)
                .ignoresSafeArea(edges: .top)
            
            CircleImage(image: Image("turtlerock"))
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
