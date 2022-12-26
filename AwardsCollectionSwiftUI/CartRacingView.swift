//
//  CartRacingView.swift
//  AwardsCollectionSwiftUI
//
//  Created by Nikita Chekan on 26.12.2022.
//

import SwiftUI

struct CartRacingView: View {
    
    @State private var start = false
    
    var body: some View {
        HStack {
            VStack(spacing: 16) {
                CartView(
                    start: start,
                    title: "Default",
                    color: .red,
                    animation: .default.delay(0.5)
                )
                CartView(
                    start: start,
                    title: "EaseOut",
                    color: .green,
                    animation: .easeOut.speed(0.2)
                )
                CartView(
                    start: start,
                    title: "EaseIn",
                    color: .yellow,
                    animation: .easeIn(duration: 0.5)
                )
                CartView(
                    start: start,
                    title: "EaseInOut",
                    color: .blue,
                    animation: .easeInOut(duration: 0.7).repeatCount(3, autoreverses: true)
                )
                CartView(
                    start: start,
                    title: "InterpolatingSpring",
                    color: .blue,
                    animation: .interpolatingSpring(
                        mass: 1, /// Отвечает за массу объекта
                        stiffness: 100, /// Отвечает за жесткость пружины (скорость падения)
                        damping: 10, /// Затухание влияет на скорость остановки анимации
                        initialVelocity: 0 /// Начальное ускорение
                    )
                )
                CartView(
                    start: start,
                    title: "Spring",
                    color: .brown,
                    animation: .spring(
                        response: 0.55, /// Влияет на продолжительность одного колебания
                        dampingFraction: 0.45, /// Контролирует упругость
                        blendDuration: 0 /// Влияет на скорость пружины
                    ).speed(0.5)
                )
            }
            .padding()
            Spacer()
        }
        .onTapGesture {
            start.toggle()
        }
    }
}

struct CartRacingView_Previews: PreviewProvider {
    static var previews: some View {
        CartRacingView()
//            .previewInterfaceOrientation(.landscapeLeft)
    }
}

struct CartView: View {
    let start: Bool
    let title: String
    let color: Color
    let animation: Animation
    
    var body: some View {
        VStack {
            Image(systemName: "cart.fill")
                .font(.title)
                .foregroundColor(color)
                .offset(x: start ? UIScreen.main.bounds.width - 200 : 0)
                .animation(animation, value: start)
            Text(title)
        }
    }
}
