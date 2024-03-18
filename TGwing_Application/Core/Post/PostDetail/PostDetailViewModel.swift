//
//  PostDetailViewModel.swift
//  TGwing_Application
//
//  Created by 양진영 on 3/18/24.
//

import Foundation

class PostViewmodel : ObservableObject {
    @Published var post : PostDetail
    
    init() {
        self.post = PostDetail(title: "티지윙 개강총회 공지 🎉", content: "🔥티지윙 개강총회🔥\n24-1 개강총회 일정입니다.\n\n⏳일시: 2024.03.14(목) 오후 6시\n✅장소: 전자정보대학(강의실 대여 예정)\n✅뒷풀이 장소: 경성주막\n회비: 12,000원\n\n개총 장소는 강의실 대여 후 추후 공지할 예정이며, 개총 회비 납부는 따로 방만들어서 공지할 예정입니다!\n\n안오면 찾아갑니다~", writedTime: "2024년 3월 2일 (토) 17:43", views: 10)
    }
    
    // 게시글 삭제
    func deletePost() {
        
    }
    
    // 게시글 업데이트
    func updatePost() {
        
    }
}
