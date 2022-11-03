//
//  ContentView.swift
//  ACI318-19_Column
//
//  Created by Gustavo Monge on 10/31/22.
//

import SwiftUI

struct Flower: Shape {
    var petalOffset = -20.0
    var petalWidth = 100.0
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let petalHeight = rect.width/2
        
        // stride is a function
        for number in stride(from: 0.0, to: (Double.pi * 2), by: (Double.pi / 8)) {
            
            let rotation = CGAffineTransform(rotationAngle: CGFloat(number))
            let position = rotation.concatenating(CGAffineTransform(translationX: rect.width/2, y: rect.height/2))
            
            let originalPetal = Path(ellipseIn: CGRect(x: petalOffset, y: 0.0, width: petalWidth, height: Double(petalHeight)))
            
            let rotatedPetal = originalPetal.applying(position)
            
            path.addPath(rotatedPetal)
        }
        return path
    }
    
}


struct ContentView: View {
    @State private var petalOffset = -20.0
    @State private var petalWidth = 100.0
    var body: some View {
        VStack{
            Flower(petalOffset: petalOffset, petalWidth: petalWidth)
                .stroke(Color.red, lineWidth: 1.0)
            
            Text("Offset")
            Slider(value: $petalOffset, in: -40...40)
                .padding([.horizontal, .bottom])
        }
    }
}
    

    
    
    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
