//
//  FeedView.swift
//  Sportli SwiftUI App
//
//  Created by William Wong on 11/2/23.
//

import SwiftUI

struct FeedView: View {
    @State private var selectionFilter: FeedFilterViewModel = .friends
    var body: some View {
        
        
        VStack {
            ZStack (alignment: .bottomLeading) {
                Color("headerColor")
                    .ignoresSafeArea()
                    .shadow(color: .black, radius: 5, x: 0, y: 0)
                
                
                
                Image("Sportli-Logo")
                    .offset(x: 166, y: -28)
                
                HStack (spacing: 16) {
                    ForEach(FeedFilterViewModel.allCases, id: \.rawValue) { item in
                        VStack (spacing: 5) {
                            Text(item.title)
                                .foregroundStyle(.white)
                                .frame(maxWidth: .infinity)
                                //.font(.custom("Nokora-Regular", size: 15))
                                
                            
                                .font(selectionFilter == item ? .custom("Nokora-Black", size: 15) : .custom("Nokora-Black", size: 15))
                            
                            
                            if selectionFilter == item {
                                Capsule()
                                    .foregroundStyle(Color("tqColor"))
                                    .frame(width: 60, height: 3)
                            } else {
                                Capsule()
                                    .foregroundStyle(Color(.clear))
                                    .frame(width: 60, height: 3)
                                    
                            }
                        }
                        .onTapGesture {
                            withAnimation(.easeInOut) {
                                self.selectionFilter = item
                            }
                        }
                    }
                }
                
                
            }
            .frame(height: 70)
            
            ScrollView {
                LazyVStack {
                    ForEach(0...20, id: \.self) { _ in
                        PostRowView()
                    }
                }
            }
            
        }
        .background(Color("bkColor"))
               
    }
}

#Preview {
    FeedView()
}
