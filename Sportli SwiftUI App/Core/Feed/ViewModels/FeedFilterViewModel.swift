//
//  FeedFilterViewModel.swift
//  Sportli SwiftUI App
//
//  Created by William Wong on 11/4/23.
//

import Foundation

enum FeedFilterViewModel: Int, CaseIterable {
    case friends
    case news
    
    var title: String {
        switch self {
        case .friends: return "Friends"
        case .news: return "News"
        }
    }
}

