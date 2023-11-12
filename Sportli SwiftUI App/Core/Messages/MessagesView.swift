//
//  MessagesView.swift
//  Sportli SwiftUI App
//
//  Created by William Wong on 11/2/23.
//

import SwiftUI

struct MessagesView: View {
    
    @State private var searchTerm = ""
    var body: some View {
        
        
        NavigationStack {
            
            VStack {
                
                ZStack (alignment: .center) {
                    Color("headerColor")
                        .ignoresSafeArea()
                        .shadow(color: .black, radius: 5, x: 0, y: 0)
                    
                    Text("Messages")
                        .font(.custom("Nokora-Bold", size: 19))
                        .foregroundStyle(.white)
                        .offset(y: -24)
                    
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color("bkColor"))
                        .frame(width: 240, height: 32)
                        .offset(y: 12)
                    
                    Image("search-sm")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 18)
                        .offset(x: -96, y: 11)
                    
                    TextField("Search chats and messages", text: $searchTerm)
                        .font(.custom("Nokora-Regular", size: 14))
                        .foregroundColor(.blue)
                        .offset(x: 115, y: 12)
                        
                }
                .frame(height: 70)
                
                
                ScrollView {
                    Text("Communities")
                        .font(.custom("Nokora-Bold", size: 18))
                        .foregroundStyle(.white)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.vertical, 5)
                        .padding(.horizontal, 16)
                        .offset(y: 5)
                    
                    CommunitiesView()
                    
                }
            }
            .background(Color("bkColor"))
            
            
        }
      }
    }


#Preview {
    MessagesView()
}
