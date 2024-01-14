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
    var body: some View {
        TabView {
            Text("Main Page")
                .tabItem {
                    Image(systemName: "house")
                }
            PostView()
                .tabItem {
                    Image(systemName: "doc.plaintext")
                }
            ProfileView()
                .tabItem {
                    Image(systemName: "person.circle")
                }
        }
        .accentColor(.black)
    }
}

#Preview {
    MainContentView()
}
