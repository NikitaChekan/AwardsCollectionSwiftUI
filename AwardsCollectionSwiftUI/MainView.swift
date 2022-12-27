//
//  MainView.swift
//  AwardsCollectionSwiftUI
//
//  Created by Nikita Chekan on 25.12.2022.
//

import SwiftUI

struct MainView: View {
    @State private var awardIsShowing = false
    
    var body: some View {
        VStack {
            Button(action: buttonAction) {
                Text(awardIsShowing ? "Hide Award" : "Show Award")
                Spacer()
                Image(systemName: "chevron.right.circle")
                    .imageScale(.large)
                    .scaleEffect(awardIsShowing ? 1.5 : 1)
                    .rotationEffect(.degrees (awardIsShowing ? 90 : 0))
            }
            Spacer()
            if awardIsShowing {
                GradientStar()
                    .frame(width: 300, height: 300)
                    .offset(x: awardIsShowing ? 0 : -UIScreen.main.bounds.width)
                    .transition(.leadingSlide)
            }
            
            Spacer()
        }
        .font(.headline)
        .padding()
    }
    
    private func buttonAction() {
        withAnimation {
            awardIsShowing.toggle()
        }
    }
}

extension AnyTransition {
    static var leadingSlide: AnyTransition {
        let insertion = AnyTransition.move(edge: .trailing)
            .combined(with: .opacity)
        let removal = AnyTransition.scale
            .combined(with: .opacity)
        
        return .asymmetric(insertion: insertion, removal: removal)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
