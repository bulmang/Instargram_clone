//
//  CustomField.swift
//  Instargram_clone
//
//  Created by 하명관 on 2023/03/17.
//

import SwiftUI

struct CustomFieldView: View {
    
    @State var placeHolder: String
    @State var id: String = ""
    
    var body: some View {
        
        TextField(placeHolder,text: $id) {
            
        }
        .padding(.leading, 20)
        .frame(height: 70)
        .background(Color.white)
        .overlay(
            RoundedRectangle(cornerRadius: 4)
                .stroke(Color.black.opacity(0.3),lineWidth: 2)
        )
        .cornerRadius(4)
        .padding(.horizontal,20)
    }
    

}

