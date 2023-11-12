//
//  PostRowView.swift
//  Sportli SwiftUI App
//
//  Created by William Wong on 11/2/23.
//

import SwiftUI

struct PostRowView: View {
    var body: some View {
        VStack {
            // profile image & user info & caption
            HStack(alignment: .top, spacing: 12) {
                Circle()
                    .frame(width: 40, height: 40)
                    .foregroundStyle(Color(.systemBlue))
                
                // users information & caption
                VStack(alignment: .leading, spacing: 2) {
                    // user information
                    HStack {
                        Text("Aisha Jabari")
                            .foregroundStyle(.white)
                            .font(.custom("Nokora-Bold", size: 16))
                        
                        Text("@Ajabari28")
                            .foregroundStyle(.gray)
                            .font(.custom("Nokora-Regular", size: 15))
                            
                        Text("• 15m")
                            .foregroundStyle(.gray)
                            .font(.custom("Nokora-Regular", size: 14))
                        
                        Spacer()
                    }
                    
                    // caption
                    
                    Text("Tennis match rocked!")
                        .foregroundStyle(.white)
                        .font(.custom("Nokora-Regular", size: 16.5))
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                    
                    // action buttons
                    
                    HStack(spacing: 20) {
                        Button {
                            // action here
                        } label: {
                            Image(systemName: "text.bubble")
                                .font(.subheadline)
                        }
                        
                        Button {
                            // action here
                        } label: {
                            Image(systemName: "heart")
                                .font(.subheadline)
                        }
                        
                    }
                    .foregroundStyle(.gray)
                    .padding(.vertical, 5)
                }
                
            }
            Group {
                Divider()
                    .overlay(.white)
            }
            .frame(width: 400)
        }
        .padding()
        
    }
}

#Preview {
    PostRowView()
}
