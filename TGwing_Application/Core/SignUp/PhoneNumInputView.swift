//
//  PhoneNumInputView.swift
//  TGwing_Application
//
//  Created by 양진영 on 11/23/23.
//

import SwiftUI

extension String {
    func pretty() -> String {
        let _str = self.replacingOccurrences(of: "-", with: "")
        let arr = Array(_str)
        
        if arr.count > 3{
            let prefix = String(format: "%@%@", String(arr[0]), String(arr[1]))
            if prefix == "02" {
                if let regex = try? NSRegularExpression(pattern: "([0-9]{2})([0-9]{3,4})([0-9]{4})", options: .caseInsensitive){
                    let modString = regex.stringByReplacingMatches(in: _str, options: [], range: NSRange(_str.startIndex..., in:_str), withTemplate: "$1-$2-$3")
                    return modString
                }
            } else if prefix == "15" || prefix == "16" || prefix == "18" {
                if let regex = try? NSRegularExpression(pattern: "([0-9]{4})([0-9]{4})", options: .caseInsensitive) {
                    let modString = regex.stringByReplacingMatches(in: _str, options: [], range: NSRange(_str.startIndex..., in: _str), withTemplate: "$1-$2")
                    return modString
                }
            } else {
                if let regex = try? NSRegularExpression(pattern: "([0-9]{3})([0-9]{3,4})([0-9]{4})", options: .caseInsensitive) {
                    let modString = regex.stringByReplacingMatches(in: _str, options: [], range: NSRange(_str.startIndex..., in:_str), withTemplate: "$1-$2-$3")
                    return modString
                }
            }
        }
        return self
    }
}

struct PhoneNumInputView: View {
    @State private var phoneNumber = ""

    var body: some View {
        NavigationStack {
            ScrollView {
                ZStack {
                    VStack {
                        Text("전화번호를 알려주세요")
                            .font(.system(size: 33))
                            .fontWeight(.semibold)
                            .frame(width:320, height:40)
                            .padding(.trailing, 60)
                            .padding(.top, 15)
                            .foregroundColor(.white)

                        Text("티지윙 소속인지 확인하는 용으로 사용됩니다.")
                            .foregroundColor(.white.opacity(0.9))
                            .fontWeight(.medium)
                            .font(.system(size: 15))
                            .padding(.trailing, 71)
                            .padding(.bottom, 20)
                        
                        // id
                        TextField("000-0000-0000", text: $phoneNumber, prompt: Text("000-0000-0000").foregroundColor(Color.white.opacity(0.4)))
                            .autocapitalization(.none)
                            .font(.system(size: 16, design: .rounded))
                            .padding(20)
                            .cornerRadius(10)
                            .foregroundColor(Color.white)
                            .background(RoundedRectangle(cornerRadius: 10).stroke(Color.white, lineWidth: 2))
                            .padding(.horizontal, 29)
                            .padding(.bottom, 15)
                            .keyboardType(.numberPad)
                            .onChange(of: phoneNumber) { _ in
                                $phoneNumber.wrappedValue = $phoneNumber.wrappedValue.pretty()
                            }
                        
                        // Next
                        NavigationLink {
                            StatusInputView()
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
    PhoneNumInputView()
}
