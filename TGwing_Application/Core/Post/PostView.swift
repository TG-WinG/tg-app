//
//  PostView.swift
//  TGwing_Application
//
//  Created by 양진영 on 1/15/24.
//

import SwiftUI

extension View {
    @available(iOS 14, *)
    func navigationBarTitleTextColor(_ color: Color) -> some View {
        let uiColor = UIColor(color)
        
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: uiColor]
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: uiColor]
        
        return self
    }
}

struct PostView: View {
    @ObservedObject var viewModel = PostListViewmodel()
    
    var body: some View {
        NavigationView {
                List {
                    ForEach(viewModel.posts) { post in
                        ZStack {
                            PostListCell(post: post)
                            NavigationLink {
                                Text("PostView")
                            } label: {
                                EmptyView()
                            }.opacity(0.0)
                        }
                        .listRowBackground(Color.gray.opacity(0.01))
                    }
                    .listRowSeparatorTint(.white)
                }
                .navigationBarTitle("티지윙 공지사항", displayMode: .inline)
                .navigationBarTitleTextColor(Color.white)
                .background(.black.opacity(0.9))
                .scrollContentBackground(.hidden)
            }
    }
}

#Preview {
    PostView()
}
