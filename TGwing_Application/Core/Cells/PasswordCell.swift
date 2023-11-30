//
//  PasswordCell.swift
//  TGwing_Application
//
//  Created by 양진영 on 11/21/23.
//

import SwiftUI

struct PasswordCell: View {
    @State private var id = ""
    @State private var password = ""
    @State private var showPassword = false
    
    var body: some View {
        ZStack {
            Color.black
                .opacity(0.85)
                .ignoresSafeArea()
            HStack {
                if showPassword {
                    TextField("비밀번호를 입력하세요", text: $password, prompt: Text("비밀번호를 입력하세요").foregroundColor(Color.white.opacity(0.4)))
                        .autocapitalization(.none)
                        .font(.system(size: 16, design: .rounded))
                        .padding(19.2)
                        .cornerRadius(10)
                        .foregroundColor(Color.white)
                    Button(action: { self.showPassword.toggle()}) {
                        Image(systemName: "eye")
                            .foregroundStyle(Color(.white))
                    }
                    .frame(width:50, height:10)
                } else {
                    SecureField("비밀번호를 입력하세요", text: $password, prompt: Text("비밀번호를 입력하세요").foregroundColor(Color.white.opacity(0.4)))
                        .autocapitalization(.none)
                        .font(.system(size: 16, design: .rounded))
                        .padding(20)
                        .cornerRadius(10)
                        .foregroundColor(Color.white)
                    Button(action: { self.showPassword.toggle()}) {
                        Image(systemName: "eye.slash")
                            .foregroundStyle(Color(.white))
                    }
                    .frame(width:50, height:10)
                }
            }
            .background(RoundedRectangle(cornerRadius: 10).stroke(Color.white, lineWidth: 2))
            .padding(.horizontal, 36)
        }
    }
}

#Preview {
    PasswordCell()
}
