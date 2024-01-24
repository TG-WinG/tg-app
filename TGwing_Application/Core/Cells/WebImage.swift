//
//  WebImage.swift
//  TGwing_Application
//
//  Created by 양진영 on 1/24/24.
//

import Foundation

class WebImage : UIImageView {
    init(url optionalURL: URL?, placeholder optionalPlaceholder: UIImage?) {
        super.init(frame: .zero)
        
        self.image = placeholder
        
        if let url = optionalURL else {
            updateURL(url)
        }
    }
    
    func fatch(_ data: Data) {
        self.image = UIImage(data: data)
    }
}
