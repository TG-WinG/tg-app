//
//  StatusInputView.swift
//  TGwing_Application
//
//  Created by 양진영 on 11/23/23.
//

import SwiftUI

enum Status: String, CaseIterable {
    case attending = "재학"
    case leaving = "휴학"
    case graduated = "졸업"
}

enum Semester: String, CaseIterable {
    case fr_1 = "1-1"
    case fr_2 = "1-2"
    case so_1 = "2-1"
    case so_2 = "2-2"
    case ju_1 = "3-1"
    case ju_w = "3-2"
    case se_1 = "4-1"
    case fe_w = "4-2"
}

struct StatusInputView: View {
    @State private var pickedStatus: Status = .attending
    @State private var pickedSemester: Semester = .fr_1
    
    var body: some View {
        NavigationStack {
            ScrollView {
                ZStack {
                    VStack {
                        Text("재학상태를 알려주세요")
                            .font(.system(size: 33))
                            .fontWeight(.semibold)
                            .frame(width:320, height:40)
                            .padding(.trailing, 40)
                            .padding(.top, 15)
                            .foregroundColor(.white)
                        
                        Text("재학, 휴학, 졸업 중 현재 상태를 알려주새요.")
                            .foregroundColor(.white.opacity(0.9))
                            .fontWeight(.medium)
                            .font(.system(size: 15))
                            .padding(.trailing, 77)
                            .padding(.bottom, 0.1)
                        Text("재학 중이라면 현재 학기를,\n휴학 중이라면 마친 학기를 입력해주세요.")
                            .foregroundColor(.white.opacity(0.9))
                            .fontWeight(.medium)
                            .font(.system(size: 15))
                            .padding(.trailing, 90)
                            .padding(.bottom, 10)
                        
                        HStack {
                            Text("재학 상태를 알려주세요")
                                .foregroundStyle(.white)
                                .padding(.trailing, 30)
                            Picker("재학 상태를 알려주세요", selection: $pickedStatus) {
                                ForEach(Status.allCases, id: \.self){
                                    Text($0.rawValue)
                                }
                            }
                            .pickerStyle(.menu)
                            .accentColor(.white)
                        .padding(.leading, 40)
                        }
                        .padding(.vertical, 10)
                        .padding(.horizontal, 15)
                        .background(RoundedRectangle(cornerRadius: 10).stroke(Color.white, lineWidth: 2))
                     
                        HStack {
                            Text("학기를 알려주세요")
                                .foregroundStyle(.white)
                                .padding(.trailing, 70)
                            Picker("학기를 알려주세요", selection: $pickedSemester){
                                ForEach(Semester.allCases, id: \.self){
                                    Text($0.rawValue)
                                }
                            }
                            .pickerStyle(.menu)
                            .accentColor(.white)
                        .padding(.leading, 40)
                        }
                        .padding(.vertical, 10)
                        .padding(.horizontal, 15)
                        .background(RoundedRectangle(cornerRadius: 10).stroke(Color.white, lineWidth: 2))
                        
                        // Request
                        NavigationLink {
                            // Request
                        } label: {
                            Text("회원가입")
                                .font(.system(size: 15, design: .rounded))
                                .fontWeight(.semibold)
                                .foregroundColor(.white)
                                .frame(width: 335, height: 44)
                                .background(Color(.systemRed))
                                .cornerRadius(30)
                                .padding(.top, 20)
                        }
                    }
                }
            }
            .scrollDisabled(true)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.black
                .opacity(0.85).ignoresSafeArea())
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: backButton())
        .onTapGesture {
            hideKeyboard()
        }
    }
}

#Preview {
    StatusInputView()
}
