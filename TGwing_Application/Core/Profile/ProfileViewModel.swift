//
//  ProfileViewModel.swift
//  TGwing_Application
//
//  Created by 양진영 on 1/14/24.
//

import Foundation

class ProfileViewModel: ObservableObject {
    @Published var ProfileData : ProfileData
    
    init(username: String, studentID : String, email : String, phoneNumber : String, status : String, semester : String, role : String, profileImagePath : String) {
        // req 보내고 로그인 여부 체크
        self.ProfileData = TGwing_Application.ProfileData(username: username, studentID: studentID, email: email, phoneNumber: phoneNumber, status: status, semester: semester, role: role, profileImagePath: profileImagePath)
    }
    
    // 프로필 정보 서버에 request
    func request() {
        
    }
}
