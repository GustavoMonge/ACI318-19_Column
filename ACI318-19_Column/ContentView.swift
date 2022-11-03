//
//  ContentView.swift
//  ACI318-19_Column
//
//  Created by Gustavo Monge on 10/31/22.
//

import SwiftUI

struct Triangle: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.minY))
        
        return path
    }
}

struct Arc: Shape {
    
    let startAngle: Angle
    let endAngle : Angle
    let clockwise: Bool
    
    func path(in rect: CGRect) -> Path {
        
        let rotationAdjustment = Angle.degrees(90)
        let modifiedStart = startAngle - rotationAdjustment
        let modifiedEnd = endAngle - rotationAdjustment
        
        var path = Path()
        
        path.addArc(center: CGPoint(x: rect.midX, y: CGFloat(rect.midY)), radius: CGFloat(min(rect.width/2, rect.height/2)), startAngle: modifiedStart, endAngle: modifiedEnd, clockwise: !clockwise)
        
        return path
    }
}

struct ContentView: View {
var body: some View {
    
    Arc(startAngle: Angle.degrees(0), endAngle: Angle.degrees(110), clockwise: true)
                .stroke(Color.red, style: StrokeStyle(lineWidth: 10))
                .frame(width: 300, height: 300)
    
    
    
//        Triangle()
// //           .fill(Color.red)
//            .stroke(Color.red, style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
//            .frame(width: 300, height: 300)
    }
}
    
    
    
    
    
    
    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
