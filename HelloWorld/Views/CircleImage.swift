//
//  CircleImage.swift
//  HelloWorld
//
//  Created by Jakub Radzik on 26/06/2022.
//

import Foundation
import SwiftUI

struct CircleImage: View {
    
    var image: Image
    
    var body: some View {
        image.clipShape(Circle())
        .overlay {
            Circle().stroke(.white, lineWidth: 5)
        }
        .shadow(color: Color.black, radius: 2, x: 0, y: 0)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
    }
}
