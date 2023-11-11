//
//  MessagesView.swift
//  Sportli SwiftUI App
//
//  Created by William Wong on 11/2/23.
//

import SwiftUI

struct MessagesView: View {
    var body: some View {
        
        
        VStack {
            
            ZStack (alignment: .center) {
                Color("headerColor")
                    .ignoresSafeArea()
                    .shadow(color: .black, radius: 5, x: 0, y: 0)
                
                Text("Messages")
                    .font(.custom("Nokora-Bold", size: 19))
                    .foregroundStyle(.white)
                    .offset(y: -15)
                   
                
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


#Preview {
    MessagesView()
}
