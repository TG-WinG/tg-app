//
//  HomeView.swift
//  TGwing_Application
//
//  Created by 양진영 on 3/5/24.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var urlList : urlList
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.black.opacity(0.9).ignoresSafeArea()
                VStack {
                    HStack {
                        Image("tglogo_wh")
                            .resizable()
                            .frame(width: 110, height: 40)
                            .padding(.leading, 8)
                        Spacer()
                        Image(systemName: "bell.fill")
                            .resizable()
                            .frame(width: 21, height: 22)
                            .foregroundColor(.white)
                            .padding(.trailing, 20)
                    }
                    .padding(.top, 10)
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(urlList.urls) { url in
                                UrlImageView(url: url.addr)
                                    .frame(width: 200, height: 200)
                            }
                        }
                    }
                    
                    Spacer()
                }
                
            }
        }
    }
}

#Preview {
    HomeView(urlList: urlList(urls: [
        url(addr: URL(string: "https://tgwing.notion.site/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2F8a92aae3-1b42-4703-979b-0e6b433cca7e%2FUntitled.jpeg?table=block&id=461b9f3d-1175-49d9-852c-ef887709dbad&spaceId=149886eb-e9e8-444a-8d34-ac4f256e6318&width=2000&userId=&cache=v2")!),
        url(addr: URL(string: "https://tgwing.notion.site/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2Fa00c886f-5892-4e83-99f0-b93a4fd4a4fa%2FKakaoTalk_Photo_2023-04-18-13-22-02-2.jpeg?table=block&id=7da2a72d-2504-44c3-a7f3-53d27b356546&spaceId=149886eb-e9e8-444a-8d34-ac4f256e6318&width=2000&userId=&cache=v2")!),
        url(addr: URL(string: "https://tgwing.notion.site/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2F67c39da2-4799-4667-b19e-5b7053f5e0ec%2FKakaoTalk_Photo_2023-04-18-13-24-33-12.jpeg?table=block&id=8030deb8-a4ee-4217-8cac-d35ee503eb59&spaceId=149886eb-e9e8-444a-8d34-ac4f256e6318&width=2000&userId=&cache=v2")!)
    ]))
}
