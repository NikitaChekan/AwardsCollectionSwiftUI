//
//  VerticalGridView.swift
//  AwardsCollectionSwiftUI
//
//  Created by Nikita Chekan on 28.12.2022.
//

import SwiftUI

struct VerticalGridView: View {
    private let dataSet = (1...100).map { "Item \($0)" }
    private let columns = [ /// столбец
        GridItem(.adaptive(minimum: 120)) /// размер столбца
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach(dataSet, id: \.self) { item in
                    Text(item)
                }
            }
        }
    }
}

struct VerticalGridView_Previews: PreviewProvider {
    static var previews: some View {
        VerticalGridView()
    }
}
