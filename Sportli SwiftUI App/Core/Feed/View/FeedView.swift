//
//  FeedView.swift
//  Sportli SwiftUI App
//
//  Created by William Wong on 11/2/23.
//

import SwiftUI

struct FeedView: View {
    @State private var selectionFilter: FeedFilterViewModel = .friends
    @Namespace var animation
    var body: some View {
        
        
       
            VStack {
                ZStack (alignment: .bottomLeading) {
                    Color("headerColor")
                        .ignoresSafeArea()
                        .shadow(color: .black, radius: 5, x: 0, y: 0)
                    
                    Image("Logo")
                        .resizable()
                        .offset(x: 140, y: -36)
                        .scaledToFill()
                        .frame(width: 120, height: 25)
        
                    feedFilterBar
                    
                    
                }
                .frame(height: 70)
                
                ZStack (alignment: .bottomTrailing) {
                    
                    feedsView
                    
                    Button {
                        print("Show me new post view")
                    } label: {
                        Image(systemName: "plus.circle.fill")
                            .resizable()
                            .renderingMode(.template)
                            .frame(width: 60, height: 60)
                            .foregroundStyle(Color("tqColor"))
                            .background(Color(.white))
                            .clipShape(Circle())
                        }
                    
                    .padding(.vertical, 30)
                    .padding(.trailing, 20)
                }
                
            }
            .background(Color("bkColor"))
        
               
    }
    
    var feedFilterBar: some View {
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
                            .matchedGeometryEffect(id: "filter", in: animation)
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
    
    var feedsView: some View {
        ScrollView {
            LazyVStack {
                ForEach(0...20, id: \.self) { _ in
                    PostRowView()
                }
            }
        }
    }
}

#Preview {
    FeedView()
}
