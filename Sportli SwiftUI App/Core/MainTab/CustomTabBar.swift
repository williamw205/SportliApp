//
//  CustomTabBar.swift
//  Sportli SwiftUI App
//
//  Created by William Wong on 11/4/23.
//

import SwiftUI

struct CustomTabBar: View {
    @Binding var currentTab: Tab
    
    var backgroundColors = [Color("purple"), Color("lightBlue"), Color("pink")]
    
    var body: some View {
        VStack {
            HStack(spacing: 0.0) {
                ForEach(Tab.allCases, id: \.rawValue) { tab in
                    
                    Button {
                        withAnimation(.easeInOut) {
                            currentTab = tab
                        }
                    } label: {
                        Image(tab.rawValue)
                            .renderingMode(.template)
                            .frame(maxWidth: .infinity)
                            .foregroundColor(.white)
                    }
                }
            }
            .frame(maxWidth: .infinity)
        }
        .frame(height: 24)
        .padding(.top, 30)
        .background(.ultraThinMaterial)
        .background(LinearGradient(colors: backgroundColors, startPoint: .leading, endPoint: .trailing))
    }
}

#Preview {
    //CustomTabBar(currentTab: .constant(.home))
    MainTabView()
}
