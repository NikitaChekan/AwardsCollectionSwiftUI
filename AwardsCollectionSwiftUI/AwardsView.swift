//
//  AwardsView.swift
//  AwardsCollectionSwiftUI
//
//  Created by Nikita Chekan on 25.12.2022.
//

import SwiftUI

struct AwardsView: View {
    private let awards = Award.getAwards().filter { $0.awarded }
    
    var body: some View {
        NavigationStack {
            CustomGridView(items: awards, columns: 2) { award in
                VStack {
                    award.awardView
                    Text(award.title)
                }
            }
            .navigationTitle("Your awards: \(awards.count)")
        }
    }
}

struct AwardsView_Previews: PreviewProvider {
    static var previews: some View {
        AwardsView()
    }
}
