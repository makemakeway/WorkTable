//
//  ProductCell4.swift
//  GoodAsOldPhone
//
//  Created by 박연배 on 2021/06/11.
//

import SwiftUI

struct ProductCell4: View {
    var body: some View {
        HStack {
            Image("image-cell4")
                .resizable()
                .scaledToFill()
                .frame(width: 80, height: 80)
            
            Text("1984 Moto Portable")
                .font(.title2)
                .fontWeight(.medium)
                .padding(.horizontal)
            
            Spacer()
            
            Image(systemName: "chevron.right")
                .foregroundColor(Color.gray)
                .padding(.trailing)
        }
        .padding(.leading)
    }
}

struct ProductCell4_Previews: PreviewProvider {
    static var previews: some View {
        ProductCell4()
    }
}