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

struct NewView: View {
    var body: some View {
        ZStack{
            Color.cyan.ignoresSafeArea()
            VStack(alignment: .leading){
                ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                    VStack {
                        Text("Title")
                            .font(.title3)
                            .fontWeight(.heavy)
                            .foregroundColor(Color.black)
                            .padding(.all, 10.0)
                    }
                }
            }
        }
    }
}


struct CombineStacks: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Title")
                .font(.title3)
                .fontWeight(.heavy)
                .foregroundColor(Color.black)
            HStack {
                Text("Placeholder")
                    .font(.subheadline)
                Spacer()
                Text("Placeholder")
                    .font(.subheadline)
                Text(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/)
            }
            HStack() {
                Image("turtlerock").clipShape(Circle())
                .overlay {
                    Circle().stroke(.white, lineWidth: 5)
                }
                .shadow(color: Color.black, radius: 2, x: 0, y: 0)
            }
        }
        .padding(/*@START_MENU_TOKEN@*/.horizontal/*@END_MENU_TOKEN@*/)
        
    }
}

struct CircleView: View {
    var body: some View {
        Image("turtlerock").clipShape(Circle())
        .overlay {
            Circle().stroke(.white, lineWidth: 5)
        }
        .shadow(color: Color.black, radius: 2, x: 0, y: 0)
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CircleView()
                .previewDevice("iPhone 13 Pro")
        }
    }
}
