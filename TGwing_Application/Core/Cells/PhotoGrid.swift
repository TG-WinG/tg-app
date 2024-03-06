//
//  PhotoGrid.swift
//  TGwing_Application
//
//  Created by 양진영 on 3/6/24.
//

import Foundation

struct url: Identifiable {
    let id = UUID()
    var addr : URL
}

class urlList : ObservableObject {
    @Published var urls : [url]
    
    init(urls: [url]) {
        self.urls = urls
    }
}
