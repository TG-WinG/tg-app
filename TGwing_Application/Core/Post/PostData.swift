//
//  PostData.swift
//  TGwing_Application
//
//  Created by 양진영 on 1/15/24.
//

import Foundation

struct Post {
    var id : Int
    var title : String
    var image : String
    var writedTime : String
}

struct Posts {
    var postList = [Post]()
}
