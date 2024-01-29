//
//  PostView.swift
//  TGwing_Application
//
//  Created by 양진영 on 1/15/24.
//

import SwiftUI

struct PostView: View {
    @ObservedObject var viewModel = PostListViewmodel()
    
    init() {
        let appearance = UINavigationBarAppearance()
        
        appearance.titleTextAttributes = [NSAttributedString.Key.foregroundColor : UIColor.white]
        appearance.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor : UIColor.white]
        appearance.backgroundColor = UIColor(Color.black.opacity(0.85))
        
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
        UINavigationBar.appearance().standardAppearance = appearance
        
    }
    
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
                .navigationBarTitle(Text("티지윙 공지사항"), displayMode: .inline)
                .background(.black.opacity(0.9))
                .scrollContentBackground(.hidden)
                .navigationBarItems(trailing: NavigationLink(destination: Text("검색 창")){
                    Image(systemName: "magnifyingglass").resizable()
                        .foregroundColor(.white)
                })
            }
    }
}

#Preview {
    PostView()
}
