//
//  CommunitiesView.swift
//  Sportli SwiftUI App
//
//  Created by William Wong on 11/6/23.
//

import SwiftUI

struct CommunitiesView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: -10) {
                ForEach(0...10, id: \.self) { user in
                    VStack {
                        ZStack {
                            Button {
                                print("Image tapped!")
                            } label: {
                                Image("Tennis-Community-Image")
                            }
                            
                            ZStack {
                                RoundedRectangle(cornerRadius: 5)
                                    .fill(Color("tqColor"))
                                    .stroke(.white, lineWidth: 1)
                                    .frame(width: 20, height: 20)
                                    .offset(x: 44, y: -33)
                            
                                //Make sure to add a white border around
                                //After you set the background
                            }
                            
                            ZStack {
                                Text("9")
                                    .font(.custom("Nokora-Bold", size: 15))
                                    .offset(x: 44, y: -32)
                                    .foregroundStyle(.white)
                            }
                        }
                        Text("Tennis")
                            .font(.custom("Nokora-Bold", size: 17))
                            .foregroundStyle(.white)
                        Text("UW-Madison")
                            .font(.custom("Nokora-Bold", size: 12))
                            .foregroundStyle(Color("gryColor"))
                    }
                }
                .padding()
            }
            .frame(height: 140)
        }
    }
}
    
    #Preview {
        CommunitiesView()
    }

