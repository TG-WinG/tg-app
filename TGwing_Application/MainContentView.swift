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
            ProfileView()
                .tabItem {
                    Image(systemName: "person")
                }
        }
        .accentColor(.black)
    }
}

#Preview {
    MainContentView()
}
