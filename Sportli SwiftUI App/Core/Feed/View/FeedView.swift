//
//  FeedView.swift
//  Sportli SwiftUI App
//
//  Created by William Wong on 11/2/23.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
       
        ScrollView {
            LazyVStack {
                ForEach(0...20, id: \.self) { _ in
                    PostRowView()
                }
            }
        }
        .background(Color("bkColor"))
    }
}

#Preview {
    FeedView()
}
