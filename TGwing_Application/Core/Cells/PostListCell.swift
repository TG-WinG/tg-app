//
//  PostListCell.swift
//  TGwing_Application
//
//  Created by 양진영 on 1/24/24.
//

import SwiftUI

struct PostListCell: View {
    @State var post : Post
    
    var body: some View {
        VStack {
            Rectangle()
                .frame(height: 1)
                .foregroundStyle(Color.gray)
                .padding(.horizontal, 10)
                .padding(.bottom, 5)
            HStack {
                    VStack (alignment: .leading) {
                        Text(post.title)
                            .fontWeight(.semibold)
                            .frame(width: 250, height: 15, alignment: .leading)
                            .foregroundColor(.white)
                            .padding(.bottom, 5)
                        Text(" \(post.writedTime)")
                            .foregroundColor(.white)
                            .font(.system(size: 12))
                    }
                    .padding(.trailing, 35)
                    UrlImageView(url: post.image)
                        .frame(width: 60, height: 60)
                        .cornerRadius(8)
            }
            .padding(.bottom, 10)
        }
    }
}

#Preview {
    PostListCell(post: Post(title: "티지윙 개강총회 공지", image: URL(string: "https://tgwing.notion.site/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2F8a92aae3-1b42-4703-979b-0e6b433cca7e%2FUntitled.jpeg?table=block&id=461b9f3d-1175-49d9-852c-ef887709dbad&spaceId=149886eb-e9e8-444a-8d34-ac4f256e6318&width=2000&userId=&cache=v2")!, writedTime: "2024.03.04"))
}
