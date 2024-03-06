//
//  MainContentView.swift
//  TGwing_Application
//
//  Created by 양진영 on 10/11/23.
//

import SwiftUI

extension View {
  func hideKeyboard() {
    UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
  }
}

struct MainContentView: View {
    var isLogined = true
    init(){
        UITabBar.appearance().barTintColor = UIColor(Color.black)
        
    }
    
    var body: some View {
        TabView {
            HomeView(urlList: urlList(urls: [
                url(addr: URL(string: "https://tgwing.notion.site/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2F8a92aae3-1b42-4703-979b-0e6b433cca7e%2FUntitled.jpeg?table=block&id=461b9f3d-1175-49d9-852c-ef887709dbad&spaceId=149886eb-e9e8-444a-8d34-ac4f256e6318&width=2000&userId=&cache=v2")!),
                url(addr: URL(string: "https://tgwing.notion.site/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2Fa00c886f-5892-4e83-99f0-b93a4fd4a4fa%2FKakaoTalk_Photo_2023-04-18-13-22-02-2.jpeg?table=block&id=7da2a72d-2504-44c3-a7f3-53d27b356546&spaceId=149886eb-e9e8-444a-8d34-ac4f256e6318&width=2000&userId=&cache=v2")!),
                url(addr: URL(string: "https://tgwing.notion.site/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2Fa20b540e-04ea-4e7b-8972-311d0b6ea7aa%2FKakaoTalk_Photo_2023-04-18-13-24-33-11.jpeg?table=block&id=e6271141-2d09-43bb-b8cd-b573a853db6d&spaceId=149886eb-e9e8-444a-8d34-ac4f256e6318&width=2000&userId=&cache=v2")!),
                url(addr: URL(string: "https://tgwing.notion.site/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2F8a92aae3-1b42-4703-979b-0e6b433cca7e%2FUntitled.jpeg?table=block&id=461b9f3d-1175-49d9-852c-ef887709dbad&spaceId=149886eb-e9e8-444a-8d34-ac4f256e6318&width=2000&userId=&cache=v2")!)
            ]))
                .tabItem {
                    VStack {
                        Image(systemName: "house")
                        Text("Home")
                    }
                }
            PostView()
                .tabItem {
                    VStack {
                        Image(systemName: "doc.plaintext")
                        Text("Notice")
                    }
                }
            if (isLogined) {
                ProfileView()
                    .tabItem {
                        VStack {
                            Image(systemName: "person.circle")
                            Text("Profile")
                        }
                    }
            }
            else {
                // 로그인 안되어있을 시 로그인 하기 띄운 프로필 뷰로 가기
            }
        }
        .accentColor(.white)
    }
}

#Preview {
    MainContentView()
}
