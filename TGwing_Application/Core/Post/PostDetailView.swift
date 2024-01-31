//
//  PostDetailView.swift
//  TGwing_Application
//
//  Created by 양진영 on 2/1/24.
//

import SwiftUI

struct PostDetailView: View {
    var body: some View {
        ZStack {
            Color.black.opacity(0.9)
                .ignoresSafeArea()
            ScrollView {
                VStack {
                    VStack (alignment: .leading) {
                        VStack {
                            HStack {
                                Image(systemName: "person.circle.fill")
                                    .resizable()
                                    .frame(width: 35, height: 35)
                                    .padding(.trailing, 3)
                                    .foregroundColor(.gray)
                                Text("배승찬")
                                    .fontWeight(.semibold)
                                    .font(.system(size: 15))
                                    .foregroundColor(.white)
                            }
                            .padding(.top, 10)
                            .padding(.bottom, 5)
                        }
                        Text("티지윙 개강총회 공지 🎉")
                            .fontWeight(.bold)
                            .font(.system(size: 18))
                            .padding(.bottom, 7)
                            .foregroundColor(.white)
                        Text("티지윙 개강총회 진행합니다!! \n장소는 육장장이입니다! \n\n날짜: 3월 8일 18시 \n회비: 10000원 \n\n안오면 찾아감 안오면 찾아감 안오면 찾아감 안오면 찾아감 안오면 찾아감 안오면 찾아감 안오면 찾아감 안오면 찾아감 안오면 찾아감 안오면 찾아감 안오면 찾아감 안오면 찾아감 안오면 찾아감 안오면 찾아감 안오면 찾아감 안오면 찾아감 안오면 찾아감 안오면 찾아감 안오면 찾아감 안오면 찾아감 안오면 찾아감 안오면 찾아감 안오면 찾아감 안오면 찾아감 안오면 찾아감 안오면 찾아감 안오면 찾아감 안오면 찾아감 안오면 찾아감 안오면 찾아감 안오면 찾아감 안오면 찾아감 안오면 찾아감 안오면 찾아감 안오면 찾아감 안오면 찾아감 안오면 찾아감 안오면 찾아감 안오면 찾아감 안오면 찾아감 ")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.bottom, 20)
                            .foregroundColor(.white)
                            .font(.system(size: 14))
                        Text("2024년 3월 2일 (토) 17:43")
                            .font(.caption)
                            .foregroundColor(.gray)
                            .padding(.bottom, 5)
                    }
                    .padding(.horizontal, 20)
                    Rectangle()
                        .frame(height: 3)
                }
            }
            .navigationBarItems(leading: backButton())
            .navigationBarBackButtonHidden(true)
        }
    }
}

#Preview {
    PostDetailView()
}
