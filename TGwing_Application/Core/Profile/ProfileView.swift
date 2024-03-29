//
//  ProfileView.swift
//  TGwing_Application
//
//  Created by 양진영 on 11/29/23.
//

import SwiftUI

struct ProfileView: View {
    @ObservedObject var ViewModel = ProfileViewModel(username: "양진영", studentID: "2022100000", email: "user1@khu.ac.kr", phoneNumber: "010-1234-5678", status: "휴학", semester: "2-2", role: " ", profileImagePath: "basicImage")
    
    @State var isLogined = false
    
    var body: some View {
        NavigationStack{
            ZStack {
                Color.black
                    .opacity(0.9)
                    .ignoresSafeArea()
                
                VStack {
                    HStack {
                        Text("내 프로필")
                            .font(.system(size: 20))
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .padding(.trailing, 200)
                        NavigationLink {
                            
                        } label: {
                            Image(systemName: "gearshape")
                                .foregroundColor(.white)
                                .frame(width: 20, height: 20)
                        }
                        .padding(.trailing, 10)
                        NavigationLink {
                            
                        } label: {
                            Image(systemName: "bell")
                                .foregroundColor(.white)
                        }
                    }
                    .padding(.bottom, 20)
                    .padding(.top, 5)
                    HStack {
                        Image(systemName: "person.circle.fill")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 80, height: 80)
                            .clipShape(Circle())
                            .foregroundColor(.gray)
                            .padding(.leading, 25)
                        ZStack {
                            HStack {
                                if (isLogined){
                                    VStack (alignment: .leading) {
                                        Text(ViewModel.ProfileData.username)
                                            .font(.system(size: 20))
                                            .foregroundColor(.white)
                                            .fontWeight(.bold)
                                            .padding(.bottom, 0.5)
                                        Text("학기: \(ViewModel.ProfileData.semester)")
                                            .foregroundColor(.white)
                                            .font(.system(size: 14))
                                        Text("재학 상태: \(ViewModel.ProfileData.status)")
                                            .foregroundColor(.white)
                                            .font(.system(size: 14))
                                    }
                                    .padding(.leading, 10)
                                    Spacer()
                                    NavigationLink {
                                        // 프로필 수정 View
                                    } label: {
                                        Image(systemName: "chevron.right")
                                            .foregroundColor(.white)
                                            .frame(width: 35, height: 80)
                                            .padding(.trailing, 10)
                                    }
                                }
                                else {
                                    NavigationLink {
                                        LoginView()
                                    } label: {
                                        Text("로그인해주세요")
                                            .foregroundColor(.white)
                                            .padding(.leading, 10)
                                            .fontWeight(.semibold)
                                        Spacer()
                                        Image(systemName: "chevron.right")
                                            .foregroundColor(.white)
                                            .frame(width: 35, height: 80)
                                            .padding(.trailing, 10)
                                    }
                                }
                            }
                        }
                    }
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    ProfileView()
}

