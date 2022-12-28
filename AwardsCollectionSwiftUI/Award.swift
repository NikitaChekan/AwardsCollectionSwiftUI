//
//  Award.swift
//  AwardsCollectionSwiftUI
//
//  Created by Nikita Chekan on 28.12.2022.
//

import SwiftUI

struct Award {
    let awardView: AnyView
    let title: String
    let awarded: Bool
    
    static func getAwards() -> [Award] {
        [
            Award(
                awardView: AnyView(GradientStar().frame(width: 160, height: 160)),
                title: "GradientStar",
                awarded: true
            ),
            Award(
                awardView: AnyView(GradientRectangles().frame(width: 160, height: 160)),
                title: "GradientRectangles",
                awarded: true
            ),
            Award(
                awardView: AnyView(PathView().frame(width: 160, height: 160)),
                title: "PathView",
                awarded: true
            ),
            Award(
                awardView: AnyView(CurvesView().frame(width: 160, height: 160)),
                title: "CurvesView",
                awarded: true
            )
        ]
    }
}
