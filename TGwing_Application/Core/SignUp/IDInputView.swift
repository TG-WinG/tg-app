//
//  IDInputView.swift
//  TGwing_Application
//
//  Created by 양진영 on 11/21/23.
//

import SwiftUI

struct IDInputView: View {
    @State private var id = ""
    @State private var isLinkActive = false
    @State private var idInputed = true
    @FocusState private var focusField: Field?
    
    enum Field: Hashable {
        case name, area, menu, review
    }
    
    var body: some View {
        NavigationStack {
            ScrollView {
                ZStack {
                    VStack {
                        Text("학번을 알려주세요")
                            .font(.system(size: 33))
                            .fontWeight(.semibold)
                            .frame(width:320, height:40)
                            .padding(.trailing, 110)
                            .padding(.top, 15)
                            .foregroundColor(.white)
                        
                        Text("티지윙 소속인지 확인하고 로그인 시 사용됩니다.")
                            .foregroundColor(.white.opacity(0.9))
                            .fontWeight(.medium)
                            .font(.system(size: 15))
                            .padding(.trailing, 55)
                            .padding(.bottom, 0.1)
                        
                        Text("학번은 8~9자리를 입력해주세요.")
                            .foregroundColor(.white.opacity(0.9))
                            .fontWeight(.medium)
                            .font(.system(size: 15))
                            .padding(.trailing, 140)
                            .padding(.bottom, 20)
                        
                        // id
                        ZStack {
                            if idInputed {
                                TextField("학번을 입력하세요", text: $id, prompt: Text("학번을 입력하세요").foregroundColor(Color.white.opacity(0.4)))
                                    .autocapitalization(.none)
                                    .font(.system(size: 16, design: .rounded))
                                    .padding(20)
                                    .cornerRadius(10)
                                    .foregroundColor(Color.white)
                                    .background(RoundedRectangle(cornerRadius: 10).stroke(Color.white, lineWidth: 2))
                                    .padding(.horizontal, 47)
                                    .padding(.bottom, 15)
                                    .contentShape(Rectangle())
                                    .onTapGesture{
                                        focusField = .review
                                    }
                                .keyboardType(.numberPad)
                            } else {
                                TextField("학번을 입력해주세요", text: $id, prompt: Text("학번을 입력해주세요 !").foregroundColor(Color.red.opacity(0.6)))
                                    .autocapitalization(.none)
                                    .font(.system(size: 16, design: .rounded))
                                    .padding(20)
                                    .cornerRadius(10)
                                    .foregroundColor(Color.white)
                                    .background(RoundedRectangle(cornerRadius: 10).stroke(Color.red, lineWidth: 2))
                                    .padding(.horizontal, 47)
                                    .padding(.bottom, 15)
                                    .contentShape(Rectangle())
                                    .onTapGesture{
                                        focusField = .review
                                    }
                                .keyboardType(.numberPad)
                            }
                        }
                        // Next
                        NavigationLink (destination: PasswordInputView(), isActive: $isLinkActive) {
                            Button (action: {
                                if $id.wrappedValue.isEmpty {
                                    idInputed = false
                                } else {
                                    self.isLinkActive = true
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
    IDInputView()
}
