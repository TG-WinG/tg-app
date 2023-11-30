//
//  Example.swift
//  TGwing_Application
//
//  Created by 양진영 on 11/23/23.
//

import SwiftUI

struct Example: View {
    @State private var pickedStatus: Status = .attending
    @State private var pickedSemester: Semester = .fr_1
    
    var body: some View {
        VStack {
            List {
                Picker("재학 상태를 알려주세요", selection: $pickedStatus) {
                    ForEach(Status.allCases, id: \.self){
                        Text($0.rawValue)
                    }
                }
            }
            .frame(width:400, height:90)
            .scrollContentBackground(.hidden)
            .background(.black.opacity(0.85))
            
            
            List {
                Picker("학기를 알려주세요", selection: $pickedSemester){
                    ForEach(Semester.allCases, id: \.self){
                        Text($0.rawValue)
                    }
                }
            }
            .frame(width:400, height:90)
            
            Picker("학기를 알려주세요", selection: $pickedSemester){
                ForEach(Semester.allCases, id: \.self){
                    Text($0.rawValue)
                }
            }
        }
    }
}

#Preview {
    Example()
}
