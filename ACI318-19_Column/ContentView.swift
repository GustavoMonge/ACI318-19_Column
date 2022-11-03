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

struct Arc: InsettableShape {
    
    let startAngle: Angle
    let endAngle : Angle
    let clockwise: Bool
    // variable to implement strokrBorder and conform to InsettableShape Protocol
    var insetAmount: CGFloat = 0.0
    
    func path(in rect: CGRect) -> Path {
        
        let rotationAdjustment = Angle.degrees(90)
        let modifiedStart = startAngle - rotationAdjustment
        let modifiedEnd = endAngle - rotationAdjustment
        
        
        var path = Path()
        
        path.addArc(center: CGPoint(x: rect.midX, y: CGFloat(rect.midY)), radius: CGFloat(min((rect.width/2 - insetAmount), (rect.height/2 - insetAmount))), startAngle: modifiedStart, endAngle: modifiedEnd, clockwise: !clockwise)
        
        return path
    }
    
    // func to be able to use .strokeBorder
    func inset(by amount: CGFloat) -> some InsettableShape {
        var arc = self
        arc.insetAmount += amount
        return arc
    }
}

struct ContentView: View {
var body: some View {
    
    Arc(startAngle: Angle.degrees(-90), endAngle: Angle.degrees(90), clockwise: true)
                .strokeBorder(Color.red, style: StrokeStyle(lineWidth: 40))
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
