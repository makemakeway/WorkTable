//
//  CustomSecureField.swift
//  MySNSApp
//
//  Created by 박연배 on 2021/07/08.
//

import SwiftUI

struct CustomSecureField: View {
    @Binding var text: String
    let placeholder: Text
    let imageName: String
    
    var body: some View {
        ZStack(alignment: .leading) {
            if text.isEmpty {
                placeholder
                    .padding(.leading, 44)
            }
            
            HStack(spacing: 14) {
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.white)
                    .padding(.leading, 10)
                
                SecureField("", text: $text)
            }
            .padding(.vertical, 8)
        }
        .background(Color.init(white: 1, opacity: 0.3))
    }
}
