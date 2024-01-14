//
//  LoginView.swift
//  TGwing_Application
//
//  Created by 양진영 on 10/12/23.
//

import SwiftUI

struct LoginView: View {
    @State private var id = ""
    @State private var password = ""
    @State private var showPassword = false
    @State private var startAnimation: Bool = false
    @State private var isLinkActive = false
    @FocusState private var focusField: Field?
    
    enum Field: Hashable {
        case name, area, menu, review
    }
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.black
                    .opacity(0.9)
                    .ignoresSafeArea()
                VStack {
                    Text("Login to T.G.WinG")
                        .font(.system(size: 38))
                        .fontWeight(.semibold)
                        .frame(width:220, height:120)
                        .padding(.top, 150)
                        .padding(.trailing, 200)
                        .foregroundColor(.white)
                    VStack {
                        // ID
                        TextField("학번을 입력하세요", text: $id, prompt: Text("학번을 입력하세요").foregroundColor(Color.white.opacity(0.4)))
                            .autocapitalization(.none)
                            .font(.system(size: 16, design: .rounded))
                            .padding(20)
                            .cornerRadius(10)
                            .foregroundColor(Color.white)
                            .background(RoundedRectangle(cornerRadius: 10).stroke(Color.white, lineWidth: 2))
                            .padding(.horizontal, 36)
                            .onTapGesture {
                                focusField = .review
                            }
                        // Password
                        ZStack {
                            HStack {
                                if showPassword {
                                    TextField("비밀번호를 입력하세요", text: $password, prompt: Text("비밀번호를 입력하세요").foregroundColor(Color.white.opacity(0.4)))
                                        .autocapitalization(.none)
                                        .font(.system(size: 16, design: .rounded))
                                        .padding(19.2)
                                        .cornerRadius(10)
                                        .foregroundColor(Color.white)
                                        .onTapGesture {
                                            focusField = .review
                                        }
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
                                        .onTapGesture {
                                            focusField = .review
                                        }
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
                    .padding(.bottom)
                    
                    // login button
                    Button {
                        // Request
                    } label: {
                        Text("로그인")
                            .font(.system(size: 15, design: .rounded))
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .frame(width: 345, height: 44)
                            .background(Color(.systemRed))
                            .cornerRadius(30)
                    }
                    .padding(.bottom, 200)
                    
                    // Sign up
                    NavigationLink  {
                        NameInputView()
                    } label: {
                        Text("T.G.WinG에 가입하기")
                            .font(.system(size: 15, design: .rounded))
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .frame(width: 345, height: 44)
                            .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(Color.white)
                            )
                    }
                }
            }
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: backButton())
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .onTapGesture {
            hideKeyboard()
        }
        .toolbar(.hidden, for: .tabBar)
    }
}

#Preview {
    LoginView()
}
