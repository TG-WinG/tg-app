//
//  PasswordInputView.swift
//  TGwing_Application
//
//  Created by 양진영 on 11/21/23.
//

import SwiftUI

struct PasswordInputView: View {
    @State private var password = ""
    @State private var passwordCh = ""
    @State private var showPassword = false
    @State private var showPasswordCh = false
    @State private var isLinkActive = false

    var body: some View {
        NavigationStack {
            ScrollView {
                ZStack {
                    VStack {
                        Text("비밀번호 생성")
                            .font(.system(size: 33))
                            .fontWeight(.semibold)
                            .frame(width:320, height:40)
                            .padding(.trailing, 170)
                            .padding(.top, 13)
                            .foregroundColor(.white)
                        
                        Text("비밀번호는 8~16자리 사이어야 합니다.")
                            .foregroundColor(.white.opacity(0.9))
                            .fontWeight(.medium)
                            .font(.system(size: 15))
                            .padding(.trailing, 107)
                            .padding(.bottom, 20)
                        
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
                            .padding(.horizontal, 77)
                        }
                        .padding(.bottom, 5)
                        
                        // Password Check
                        ZStack {
                            HStack {
                                if showPasswordCh {
                                    TextField("비밀번호 확인", text: $passwordCh, prompt: Text("비밀번호 확인").foregroundColor(Color.white.opacity(0.4)))
                                        .autocapitalization(.none)
                                        .font(.system(size: 16, design: .rounded))
                                        .padding(19.2)
                                        .cornerRadius(10)
                                        .foregroundColor(Color.white)
                                    Button(action: { self.showPasswordCh.toggle()}) {
                                        Image(systemName: "eye")
                                            .foregroundStyle(Color(.white))
                                    }
                                    .frame(width:50, height:10)
                                } else {
                                    SecureField("비밀번호 확인", text: $passwordCh, prompt: Text("비밀번호 확인").foregroundColor(Color.white.opacity(0.4)))
                                        .autocapitalization(.none)
                                        .font(.system(size: 16, design: .rounded))
                                        .padding(20)
                                        .cornerRadius(10)
                                        .foregroundColor(Color.white)
                                    Button(action: { self.showPasswordCh.toggle()}) {
                                        Image(systemName: "eye.slash")
                                            .foregroundStyle(Color(.white))
                                    }
                                    .frame(width:50, height:10)
                                }
                            }
                            .background(RoundedRectangle(cornerRadius: 10).stroke(Color.white, lineWidth: 2))
                            .padding(.horizontal, 77)
                        }
                        .padding(.bottom, 15)
                        
                        // Next
                        NavigationLink (destination: EmailInputView(), isActive: $isLinkActive) {
                            Button(action: {
                                if $password.wrappedValue.isEmpty {
                                    // password is empty
                                }
                                else if $passwordCh.wrappedValue.isEmpty {
                                    // password check is empty
                                }
                                else {
                                    if $password.wrappedValue == $passwordCh.wrappedValue {
                                        self.isLinkActive = true
                                    } else {
                                        // password not correct
                                    }
                                }
                            }) {
                            Text("Next")
                                .font(.system(size: 15, design: .rounded))
                                .fontWeight(.semibold)
                                .foregroundColor(.white)
                                .frame(width: 335, height: 44)
                                .background(Color(.systemRed))
                                .cornerRadius(30)
                            }
                        }
                        .padding(.bottom, 540)
                    }
                }
            }
            .scrollDisabled(true)
            .background(Color.black
                .opacity(0.85)
                .ignoresSafeArea())
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: backButton())
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .onTapGesture {
            hideKeyboard()
        }
    }
}

#Preview {
    PasswordInputView()
}
