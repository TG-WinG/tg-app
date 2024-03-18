//
//  PostData.swift
//  TGwing_Application
//
//  Created by 양진영 on 1/15/24.
//

import Foundation

struct Post : Identifiable {
    let id = UUID()
    var title : String
    var image : URL
    var writedTime : String
}
