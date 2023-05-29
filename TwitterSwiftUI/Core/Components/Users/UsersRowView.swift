//
//  UsersRowView.swift
//  TwitterSwiftUI
//
//  Created by YutaNoguchi on 2023/05/29.
//

import SwiftUI

struct UsersRowView: View {
    var body: some View {
        HStack(spacing: 12) {
            Circle()
                .frame(width: 48, height: 48)
            
            VStack(alignment: .leading, spacing: 4) {
                Text("joker")
                    .font(.subheadline)
                    .foregroundColor(.black)
                
                Text("Heath Ledger")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                
             }
            Spacer()
        }
        .padding(.horizontal)
        .padding(.vertical, 4)
    }
}

struct UsersRowView_Previews: PreviewProvider {
    static var previews: some View {
        UsersRowView()
    }
}
