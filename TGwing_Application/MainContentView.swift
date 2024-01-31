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
    
    init(){
        UITabBar.appearance().barTintColor = UIColor(Color.black)
        
    }
    
    var body: some View {
        TabView {
            ZStack {
                Color.black.opacity(0.9).ignoresSafeArea()
                Text("Main Page").foregroundColor(.white)
            }
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
            ProfileView()
                .tabItem {
                    VStack {
                        Image(systemName: "person.circle")
                        Text("Profile")
                    }
                }
        }
        .accentColor(.white)
    }
}

#Preview {
    MainContentView()
}
