//
//  ContentView.swift
//  ACI318-19_Column
//
//  Created by Gustavo Monge on 10/31/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Path { path in
            path.move(to: CGPoint(x: 200, y: 100))
            path.addLine(to: CGPoint(x: 100, y: 300))
            path.addLine(to: CGPoint(x: 300, y: 300))
            path.addLine(to: CGPoint(x: 200, y: 100))
            
        }
        .stroke(/*@START_MENU_TOKEN@*/Color.blue/*@END_MENU_TOKEN@*/, style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
    }
}

        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        //        GeometryReader { geometry in
//
//        let rect = CGRect(x: 10, y: 10, width: 100, height: 100)
//        let myView = UIView(frame: rect)
//
//        let shape = RoundedRectangle(cornerRadius:20)
//        shape.fill().foregroundColor(.red)
//        shape.strokeBorder(lineWidth: 3)
//        shape.padding(20)
//
//            Text("Hola Gustavo").font( Font.system(size: 50)).colorInvert()
//        }
//    }
    
    



//private struct DrawingConstants {
//    static let cornerRadious: CGFloat = 20
//    static let lineWidth: CGFloat = 3
//    static let fontScale: CGFloat = 0.8
//}
//
//
//
//struct Column: View {
//    var body: some View{
//        ZStack{
//        let rect = CGRect(x: 10, y: 10, width: 50, height: 100)
//            let myView = UIView(frame: rect).backgroundColor? .ciColor.blue
//
//        }
//    }
//}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
