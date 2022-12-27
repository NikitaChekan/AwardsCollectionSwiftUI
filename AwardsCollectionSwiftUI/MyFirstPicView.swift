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
            let middle = size / 2
            let farLine = size * 0.425 /// дальняя линия 85
            let nearLine = size * 0.25 /// ближняя линия 50
            
            ZStack {
                ForEach(0..<6) { iteration in
                    Path { path in
                        path.move(to: CGPoint(x: middle, y: nearLine))
                        path.addLine(to: CGPoint(x: middle + nearLine, y: nearLine / 2))
                        path.addLine(to: CGPoint(x: middle, y: farLine))
                        path.addLine(to: CGPoint(x: middle - (farLine - nearLine), y: nearLine / 10))
                    }
                    .fill(
                        LinearGradient(
                            colors: [.pink, .blue],
                            startPoint: UnitPoint(x: 1, y: 1),
                            endPoint: UnitPoint(x: 0, y: 1)
                        )
                    )
                    .rotationEffect(.degrees(Double(iteration) * 60))
                    .shadow(color: .purple.opacity(0.5), radius: 15)
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
