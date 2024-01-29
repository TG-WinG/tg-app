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
            ZStack {
                Color.black.opacity(0.9).ignoresSafeArea()
                Text("Main Page").foregroundColor(.white)
            }
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
        .accentColor(.white)
    }
}

#Preview {
    MainContentView()
}
