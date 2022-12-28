//
//  HorizontalGridView.swift
//  AwardsCollectionSwiftUI
//
//  Created by Nikita Chekan on 28.12.2022.
//

import SwiftUI

struct HorizontalGridView: View {
    private let dataSet = 1...10
    private let rows = [
        GridItem()
    ]
    
    var body: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows: rows) {
                ForEach(dataSet, id: \.self) { item in
                    Image(systemName: item.formatted() + ".circle")
                        .resizable()
                        .frame(width: 50, height: 50)
                }
            }
        }
    }
}

struct HorizontalGridView_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalGridView()
    }
}
