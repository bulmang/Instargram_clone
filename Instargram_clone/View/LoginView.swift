//
//  LoginView.swift
//  Instargram_clone
//
//  Created by 하명관 on 2023/03/17.
//

import SwiftUI

struct LoginView: View {
    
    
    var body: some View {
    
        GeometryReader { geometry in
            VStack {
                
                Image("instargramLogo")
                    .resizable()
                    .scaledToFit()
                    .padding(.horizontal,160) // 양옆 페딩
                    .padding(.vertical,70) // 위아래 페딩
                
                CustomFieldView(placeHolder: "사용자 이름, 이메일 주소 또는 휴대폰 번호", id: "")
                    .padding(.bottom,10)
                
                CustomFieldView(placeHolder: "비밀번호", id: "")
                    .padding(.bottom,10)
                
                Button(action: {
                    
                }, label: {
                    Text("로그인")
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .background(Color("ColorBlue"))
                        .overlay(
                            RoundedRectangle(cornerRadius: 4)
                                .stroke(Color.black.opacity(0.3),lineWidth: 2)
                        )
                        .cornerRadius(4)
                        .padding(.horizontal,20)
                })
                    .padding(.bottom,10)
                
                Button(action: {
                    
                }, label: {
                    Text("비밀번호를 잊으셨나요?")
                        .foregroundColor(.black)
                })
                
                Spacer()
                
                Button(action: {
                    
                }, label: {
                    Text("새 계정 만들기")
                        .foregroundColor(Color("ColorPurple"))
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .overlay(
                            RoundedRectangle(cornerRadius: 4)
                                .stroke(Color("ColorPurple"),lineWidth: 2)
                        )
                        .cornerRadius(4)
                        .padding(.horizontal,20)
                })
                    .padding(.bottom,10)
                
                Image("metaLogo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 40)
            }
        }
        .background(Color("bg"))
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

