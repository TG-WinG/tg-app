//
//  NameInputView.swift
//  TGwing_Application
//
//  Created by 양진영 on 11/21/23.
//

import SwiftUI

struct NameInputView: View {
    @State private var name = ""
    @State private var isLinkActive = false
    @State private var nameInputed = true
    @FocusState private var focusField: Field?
//    @State private var keyboardHeight: CGFloat = 540
    
    enum Field: Hashable {
        case name, area, menu, review
    }
    
    var body: some View {
            NavigationStack {
                ScrollView {
                    ZStack {
                        VStack {
                            Text("이름을 알려주세요")
                                .font(.system(size: 33))
                                .fontWeight(.semibold)
                                .frame(width:320, height:40)
                                .padding(.trailing, 110)
                                .padding(.top, 15)
                                .foregroundColor(.white)
                            
                            Text("동아리원들이 서로 알 수 있도록 이름을 알려주세요.")
                                .foregroundColor(.white.opacity(0.9))
                                .fontWeight(.medium)
                                .font(.system(size: 15))
                                .padding(.trailing, 37)
                                .padding(.bottom, 20)
                            
                            // name
                            ZStack {
                                if nameInputed {
                                    TextField("이름을 입력하세요", text: $name, prompt: Text("이름을 입력하세요").foregroundColor(Color.white.opacity(0.4)))
                                        .autocapitalization(.none)
                                        .font(.system(size: 16, design: .rounded))
                                        .padding(20)
                                        .cornerRadius(10)
                                        .foregroundColor(Color.white)
                                        .background(RoundedRectangle(cornerRadius: 10).stroke(Color.white, lineWidth: 2))
                                        .padding(.horizontal, 47)
                                        .contentShape(Rectangle())
                                        .onTapGesture{
                                            focusField = .review
                                        }
                                    .padding(.bottom, 15)
                                } else {
                                    TextField("이름을 입력해주세요", text: $name, prompt: Text("이름을 입력해주세요 !").foregroundColor(Color.red.opacity(0.6)))
                                        .autocapitalization(.none)
                                        .font(.system(size: 16, design: .rounded))
                                        .padding(20)
                                        .cornerRadius(10)
                                        .foregroundColor(Color.white)
                                        .background(RoundedRectangle(cornerRadius: 10).stroke(Color.red, lineWidth: 2))
                                        .padding(.horizontal, 47)
                                        .contentShape(Rectangle())
                                        .onTapGesture{
                                            focusField = .review
                                        }
                                    .padding(.bottom, 15)
                                }
                            }
                            
                            // Next
                            NavigationLink (destination: IDInputView(), isActive: $isLinkActive) {
                                Button (action: {
                                    if ($name.wrappedValue.isEmpty){
                                        self.nameInputed = false
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
                    .opacity(0.85).ignoresSafeArea())
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
    NameInputView()
}
