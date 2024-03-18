//
//  PostDetailModel.swift
//  TGwing_Application
//
//  Created by 양진영 on 3/18/24.
//

import Foundation

struct PostDetail: Identifiable {
    let id = UUID()
    var title: String
    var content: String
    var writedTime: String
    var views: Int
}
