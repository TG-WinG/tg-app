//
//  HomeView.swift
//  TGwing_Application
//
//  Created by 양진영 on 3/5/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
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
                Spacer()
                
            }
            
        }
    }
}

#Preview {
    HomeView()
}
