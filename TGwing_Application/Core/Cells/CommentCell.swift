//
//  CommentCell.swift
//  TGwing_Application
//
//  Created by 양진영 on 2/8/24.
//

import SwiftUI

struct CommentCell: View {
    var body: some View {
        ZStack {
            Color.black.opacity(0.9).ignoresSafeArea()
            HStack {
                    VStack (alignment: .leading) {
                        HStack {
                            Image(systemName: "person.circle.fill")
                                .resizable()
                                .frame(width: 30, height: 30)
                                .padding(.trailing, 3)
                                .foregroundColor(.gray)
                            Text("이정우")
                                .fontWeight(.semibold)
                                .font(.system(size: 15))
                                .foregroundColor(.white)
                        }
                        .padding(.bottom, 3)
                        Text("응 안가~")
                            .font(.system(size: 14))
                            .foregroundColor(.white)
                            .padding(.bottom, 4)
                        Text("2024.03.04")
                            .foregroundColor(.white)
                            .font(.system(size: 12))
                    }
                    .padding(.trailing, 35)
            }
        }
    }
}

#Preview {
    CommentCell()
}
