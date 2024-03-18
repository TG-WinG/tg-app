//
//  PostViewmodel.swift
//  TGwing_Application
//
//  Created by 양진영 on 1/24/24.
//

import Foundation

class PostListViewmodel : ObservableObject {
    @Published var posts : [Post]
    
    init() {
        // 임시 데이터로 초기화
        self.posts = [Post(title: "티지윙 개강총회 공지 🎉", image: URL(string: "https://tgwing.notion.site/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2F8a92aae3-1b42-4703-979b-0e6b433cca7e%2FUntitled.jpeg?table=block&id=461b9f3d-1175-49d9-852c-ef887709dbad&spaceId=149886eb-e9e8-444a-8d34-ac4f256e6318&width=2000&userId=&cache=v2")!, writedTime: "2024.03.04"),
                      Post(title: "티지윙 MT 공지~!!", image: URL(string: "https://tgwing.notion.site/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2F67c39da2-4799-4667-b19e-5b7053f5e0ec%2FKakaoTalk_Photo_2023-04-18-13-24-33-12.jpeg?table=block&id=8030deb8-a4ee-4217-8cac-d35ee503eb59&spaceId=149886eb-e9e8-444a-8d34-ac4f256e6318&width=2000&userId=&cache=v2")!, writedTime: "2024.04.07"),
                      Post(title: "티지윙 사막 공지 🌸", image: URL(string: "https://tgwing.notion.site/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2Fa00c886f-5892-4e83-99f0-b93a4fd4a4fa%2FKakaoTalk_Photo_2023-04-18-13-22-02-2.jpeg?table=block&id=7da2a72d-2504-44c3-a7f3-53d27b356546&spaceId=149886eb-e9e8-444a-8d34-ac4f256e6318&width=2000&userId=&cache=v2")!, writedTime: "2024.04.22"),
                      Post(title: "티지윙 개강총회 공지 🎉", image: URL(string: "https://tgwing.notion.site/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2F8a92aae3-1b42-4703-979b-0e6b433cca7e%2FUntitled.jpeg?table=block&id=461b9f3d-1175-49d9-852c-ef887709dbad&spaceId=149886eb-e9e8-444a-8d34-ac4f256e6318&width=2000&userId=&cache=v2")!, writedTime: "2024.03.04"),
                      Post(title: "티지윙 개강총회 공지 🎉", image: URL(string: "https://tgwing.notion.site/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2F8a92aae3-1b42-4703-979b-0e6b433cca7e%2FUntitled.jpeg?table=block&id=461b9f3d-1175-49d9-852c-ef887709dbad&spaceId=149886eb-e9e8-444a-8d34-ac4f256e6318&width=2000&userId=&cache=v2")!, writedTime: "2024.03.04"),
                      Post(title: "티지윙 개강총회 공지 🎉", image: URL(string: "https://tgwing.notion.site/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2F8a92aae3-1b42-4703-979b-0e6b433cca7e%2FUntitled.jpeg?table=block&id=461b9f3d-1175-49d9-852c-ef887709dbad&spaceId=149886eb-e9e8-444a-8d34-ac4f256e6318&width=2000&userId=&cache=v2")!, writedTime: "2024.03.04"),
                      Post(title: "티지윙 개강총회 공지 🎉", image: URL(string: "https://tgwing.notion.site/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2F8a92aae3-1b42-4703-979b-0e6b433cca7e%2FUntitled.jpeg?table=block&id=461b9f3d-1175-49d9-852c-ef887709dbad&spaceId=149886eb-e9e8-444a-8d34-ac4f256e6318&width=2000&userId=&cache=v2")!, writedTime: "2024.03.04"),
                      Post(title: "티지윙 개강총회 공지 🎉", image: URL(string: "https://tgwing.notion.site/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2F8a92aae3-1b42-4703-979b-0e6b433cca7e%2FUntitled.jpeg?table=block&id=461b9f3d-1175-49d9-852c-ef887709dbad&spaceId=149886eb-e9e8-444a-8d34-ac4f256e6318&width=2000&userId=&cache=v2")!, writedTime: "2024.03.04"),
                      Post(title: "티지윙 개강총회 공지 🎉", image: URL(string: "https://tgwing.notion.site/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2F8a92aae3-1b42-4703-979b-0e6b433cca7e%2FUntitled.jpeg?table=block&id=461b9f3d-1175-49d9-852c-ef887709dbad&spaceId=149886eb-e9e8-444a-8d34-ac4f256e6318&width=2000&userId=&cache=v2")!, writedTime: "2024.03.04"),
                      Post(title: "티지윙 개강총회 공지 🎉", image: URL(string: "https://tgwing.notion.site/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2F8a92aae3-1b42-4703-979b-0e6b433cca7e%2FUntitled.jpeg?table=block&id=461b9f3d-1175-49d9-852c-ef887709dbad&spaceId=149886eb-e9e8-444a-8d34-ac4f256e6318&width=2000&userId=&cache=v2")!, writedTime: "2024.03.04"),
                      Post(title: "티지윙 개강총회 공지 🎉", image: URL(string: "https://tgwing.notion.site/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2F8a92aae3-1b42-4703-979b-0e6b433cca7e%2FUntitled.jpeg?table=block&id=461b9f3d-1175-49d9-852c-ef887709dbad&spaceId=149886eb-e9e8-444a-8d34-ac4f256e6318&width=2000&userId=&cache=v2")!, writedTime: "2024.03.04"),
                      Post(title: "티지윙 개강총회 공지 🎉", image: URL(string: "https://tgwing.notion.site/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2F8a92aae3-1b42-4703-979b-0e6b433cca7e%2FUntitled.jpeg?table=block&id=461b9f3d-1175-49d9-852c-ef887709dbad&spaceId=149886eb-e9e8-444a-8d34-ac4f256e6318&width=2000&userId=&cache=v2")!, writedTime: "2024.03.04"),
                      Post(title: "티지윙 개강총회 공지 🎉", image: URL(string: "https://tgwing.notion.site/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2F8a92aae3-1b42-4703-979b-0e6b433cca7e%2FUntitled.jpeg?table=block&id=461b9f3d-1175-49d9-852c-ef887709dbad&spaceId=149886eb-e9e8-444a-8d34-ac4f256e6318&width=2000&userId=&cache=v2")!, writedTime: "2024.03.04"),
                      Post(title: "티지윙 개강총회 공지 🎉", image: URL(string: "https://tgwing.notion.site/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2F8a92aae3-1b42-4703-979b-0e6b433cca7e%2FUntitled.jpeg?table=block&id=461b9f3d-1175-49d9-852c-ef887709dbad&spaceId=149886eb-e9e8-444a-8d34-ac4f256e6318&width=2000&userId=&cache=v2")!, writedTime: "2024.03.04")
        ]
    }
    
    // 서버에서 데이터 받아오기
    
    // 게시글 리스트 업데이트
    func updatePosts() {
        
    }
}

class PostModifyViewmodel : ObservableObject {
    @Published var post : Post
    
    init() {
        self.post = Post(title: "티지윙 개강총회 공지", image: URL(string: "https://tgwing.notion.site/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2F8a92aae3-1b42-4703-979b-0e6b433cca7e%2FUntitled.jpeg?table=block&id=461b9f3d-1175-49d9-852c-ef887709dbad&spaceId=149886eb-e9e8-444a-8d34-ac4f256e6318&width=2000&userId=&cache=v2")!, writedTime: "2024.03.04")
    }
    
    // 게시글 수정 적용 (서버에 변경사항 request)
    func modifyPost() {
        
    }
    
    // 게시글 삭제
    func deletePost() {
        
    }
}
