//
//  MyFirstPic.swift
//  AwardsCollectionSwiftUI
//
//  Created by Nikita Chekan on 26.12.2022.
//

import SwiftUI

struct MyFirstPicView: View {
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let size = min(width, height)
            let middle = size/2
            let farLine = size * 0.9 /// дальняя линия
            let nearLine = size * 0.1 /// ближняя линия
            
            ZStack {
                ForEach(0..<6) { iteration in
                    Path { path in
                        path.move(to: CGPoint(x: middle, y: middle - 50))
                        path.addLine(to: CGPoint(x: middle + 50, y: farLine - 155))
                        path.addLine(to: CGPoint(x: middle, y: middle - 15))
                        path.addLine(to: CGPoint(x: middle - 35, y: nearLine - 15))
                    }
//                    .fill(Color(red: 0.4, green: 0.4, blue: 0.4))
                    .fill(
                        LinearGradient(
                            colors: [.pink, .blue],
                            startPoint: UnitPoint(x: 1, y: 0),
                            endPoint: UnitPoint(x: 0, y: 1)
                        )
                    )
                    .rotationEffect(.degrees(Double(iteration) * 60))
                }
            }
        }
    }
}

struct MyFirstPic_Previews: PreviewProvider {
    static var previews: some View {
        MyFirstPicView()
            .frame(width: 200, height: 200)
    }
}


/// Центральная верхняя
/// Правая
/// Центральная нижняя
/// Левая

// Сюрикен
//path.move(to: CGPoint(x: middle, y: middle - 50))
//path.addLine(to: CGPoint(x: middle + 50, y: farLine - 15))
//path.addLine(to: CGPoint(x: middle, y: middle - 15))
//path.addLine(to: CGPoint(x: middle - 35, y: nearLine - 15))
