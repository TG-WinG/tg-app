//
//  toLoginView.swift
//  TGwing_Application
//
//  Created by 양진영 on 3/18/24.
//

import SwiftUI

struct toLoginView: View {
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
                                    .padding(.trailing, 120)
                                    NavigationLink {
                                        // 프로필 수정
                                    } label: {
                                        Image(systemName: "chevron.right")
                                            .foregroundColor(.white)
                                            .frame(width: 35, height: 80)
                                    }
                                }
                                else {
                                    NavigationLink {
                                        LoginView()
                                    } label: {
                                        Text("로그인해주세요                            >")
                                            .foregroundColor(.white)
                                            .frame(width: 240, height: 80, alignment: .leading)
                                    }
                                    .padding(.leading, 16)
                                    .padding(.trailing, 0)
                                }
                            }
                        }
                    }
                    Spacer()
                    NavigationLink {
                        LoginView()
                    } label: {
                        Text("로그인 창")
                            .padding(.bottom, 10)
                    }
                }
            }
        }
    }
}

#Preview {
    toLoginView()
}
