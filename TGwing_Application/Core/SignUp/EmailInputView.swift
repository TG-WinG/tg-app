//
//  EmailInputView.swift
//  TGwing_Application
//
//  Created by 양진영 on 11/22/23.
//

import SwiftUI

struct EmailInputView: View {
    @State private var email = ""
    
    var body: some View {
        NavigationStack {
            ScrollView {
                ZStack {
                    VStack {
                        Text("이메일을 알려주세요")
                            .font(.system(size: 33))
                            .fontWeight(.semibold)
                            .frame(width:320, height:40)
                            .padding(.trailing, 80)
                            .padding(.top, 15)
                            .foregroundColor(.white)
                        
                        Text("공지 알림용으로 사용됩니다.")
                            .foregroundColor(.white.opacity(0.9))
                            .fontWeight(.medium)
                            .font(.system(size: 15))
                            .padding(.trailing, 165)
                            .padding(.bottom, 20)
                        
                        // id
                        TextField("이메일을 입력하세요", text: $email, prompt: Text("이메일을 입력하세요").foregroundColor(Color.white.opacity(0.4)))
                            .autocapitalization(.none)
                            .font(.system(size: 16, design: .rounded))
                            .padding(20)
                            .cornerRadius(10)
                            .foregroundColor(Color.white)
                            .background(RoundedRectangle(cornerRadius: 10).stroke(Color.white, lineWidth: 2))
                            .padding(.horizontal, 33)
                            .padding(.bottom, 15)
                            .keyboardType(.emailAddress)
                        // Next
                        NavigationLink {
                            PhoneNumInputView()
                        } label: {
                            Text("Next")
                                .font(.system(size: 15, design: .rounded))
                                .fontWeight(.semibold)
                                .foregroundColor(.white)
                                .frame(width: 335, height: 44)
                                .background(Color(.systemRed))
                                .cornerRadius(30)
                        }
                        .padding(.bottom, 540)
                    }
                }
            }
            .scrollDisabled(true)
            .background(Color.black
                .opacity(0.9)
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
    EmailInputView()
}
