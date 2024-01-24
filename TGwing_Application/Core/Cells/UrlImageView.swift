//
//  UrlImageView.swift
//  TGwing_Application
//
//  Created by 양진영 on 1/24/24.
//

import SwiftUI

struct UrlImageView: View {
    @State var url : URL
    
    var body: some View {
        AsyncImage(url: url) { image in
            image.resizable()
        } placeholder: {
            ProgressView()
        }
        .frame(width: 60, height: 60)
        .cornerRadius(8)
    }
}

#Preview {
    UrlImageView(url: URL(string: "https://tgwing.notion.site/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2F8a92aae3-1b42-4703-979b-0e6b433cca7e%2FUntitled.jpeg?table=block&id=461b9f3d-1175-49d9-852c-ef887709dbad&spaceId=149886eb-e9e8-444a-8d34-ac4f256e6318&width=2000&userId=&cache=v2")!)
}
