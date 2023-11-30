//
//  SignUpView.swift
//  TGwing_Application
//
//  Created by 양진영 on 10/12/23.
//

import SwiftUI

struct SignUpView: View {
    @State private var name = ""
    @State private var id = ""
    @State private var password = ""
    @State private var passwordCh = ""
    @State private var email = ""
    @State private var phoneNum = ""
    @State private var showPassword = false
    @State private var showPasswordCh = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.black
                    .opacity(0.85)
                    .ignoresSafeArea()
                VStack {
                    Text("Sign up to T.G.WinG")
                        .font(.system(size: 38))
                        .fontWeight(.semibold)
                        .frame(width:220, height:120)
                        .padding(.top, 130)
                        .padding(.trailing, 180)
                        .foregroundColor(.white)
                    VStack {
                        // name
                        TextField("이름을 입력하세요", text: $id, prompt: Text("이름을 입력하세요").foregroundColor(Color.white.opacity(0.4)))
                            .autocapitalization(.none)
                            .font(.system(size: 16, design: .rounded))
                            .padding(20)
                            .cornerRadius(10)
                            .foregroundColor(Color.white)
                            .background(RoundedRectangle(cornerRadius: 10).stroke(Color.white, lineWidth: 2))
                            .padding(.horizontal, 28)
                        
                        // ID
                        TextField("학번을 입력하세요", text: $id, prompt: Text("학번을 입력하세요").foregroundColor(Color.white.opacity(0.4)))
                            .autocapitalization(.none)
                            .font(.system(size: 16, design: .rounded))
                            .padding(20)
                            .cornerRadius(10)
                            .foregroundColor(Color.white)
                            .background(RoundedRectangle(cornerRadius: 10).stroke(Color.white, lineWidth: 2))
                            .padding(.horizontal, 28)
                        
                        // Email
                        TextField("이메일을 입력하세요", text: $email, prompt: Text("이메일을 입력하세요").foregroundColor(Color.white.opacity(0.4)))
                            .autocapitalization(.none)
                            .font(.system(size: 16, design: .rounded))
                            .padding(20)
                            .cornerRadius(10)
                            .foregroundColor(Color.white)
                            .background(RoundedRectangle(cornerRadius: 10).stroke(Color.white, lineWidth: 2))
                            .padding(.horizontal, 28)
                            .keyboardType(.emailAddress)
                        
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
                            .padding(.horizontal, 28)
                        }
                        // Password Ch
                        ZStack {
                            HStack {
                                if showPasswordCh {
                                    TextField("비밀번호를 확인", text: $passwordCh, prompt: Text("비밀번호 확인").foregroundColor(Color.white.opacity(0.4)))
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
                            .padding(.horizontal, 28)
                        }
                        
                        // Phone Number
                        TextField("전화번호를 입력하세요", text: $phoneNum, prompt: Text("전화번호를 입력하세요").foregroundColor(Color.white.opacity(0.4)))
                            .autocapitalization(.none)
                            .font(.system(size: 16, design: .rounded))
                            .padding(20)
                            .cornerRadius(10)
                            .foregroundColor(Color.white)
                            .background(RoundedRectangle(cornerRadius: 10).stroke(Color.white, lineWidth: 2))
                            .padding(.horizontal, 28)
                            .keyboardType(.numberPad)
                    }
                    .padding(.bottom)
                    
                    // Register
                    Button {
                        // Request
                    } label: {
                        Text("가입하기")
                            .font(.system(size: 15, design: .rounded))
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .frame(width: 345, height: 44)
                            .background(Color(.systemRed))
                            .cornerRadius(30)
                    }
                    .padding(.bottom, 240)
                }
            }
        }
    }
}

#Preview {
    SignUpView()
}
