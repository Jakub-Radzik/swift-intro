//
//  ContentView.swift
//  HelloWorld
//
//  Created by Jakub Radzik on 21/06/2022.
//
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .center){
            Image("logo")
                .resizable()
                .aspectRatio(contentMode: ContentMode.fit)
            Spacer()
            Text("New Text")
                .font(.largeTitle)
                .bold()
                .padding()
                .background(Color.gray)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewDevice("iPhone 13 Pro")
        }
    }
}
