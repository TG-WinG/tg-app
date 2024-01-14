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
        self.ProfileData = TGwing_Application.ProfileData(username: username, studentID: studentID, email: email, phoneNumber: phoneNumber, status: status, semester: semester, role: role, profileImagePath: profileImagePath)
    }
}
