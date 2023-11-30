//
//  UserData.swift
//  TGwing_Application
//
//  Created by 양진영 on 10/12/23.
//

import Foundation

class UserData {
    var username : String
    final var studentID : Int
    var email : String
    var password : String
    var phoneNumber : String
    var status : String
    var semester : String
    
    init(username: String, studentID: Int, email: String, password: String, phoneNumber: String, status: String, semester: String) {
        self.username = username
        self.studentID = studentID
        self.email = email
        self.password = password
        self.phoneNumber = phoneNumber
        self.status = status
        self.semester = semester
    }
}
