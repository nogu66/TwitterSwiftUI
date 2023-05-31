//
//  AuthenticationHeaderView.swift
//  TwitterSwiftUI
//
//  Created by YutaNoguchi on 2023/05/31.
//

import SwiftUI

struct AuthHeaerView: View {
    let title1: String
    let title2: String
    
    var body: some View {
            VStack(alignment: .leading) {
                HStack {Spacer()}
                
                Text(title1)
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                
                Text(title2)
                    .font(.largeTitle)
                    .fontWeight(.semibold)
            }
            .frame(height:240)
            .padding(.leading)
            .background(Color(.systemBlue))
            .foregroundColor(.white)
            .clipShape(RoundedShape(corners: [.bottomRight]))
    }
}

struct AuthHeaerView_Previews: PreviewProvider {
    static var previews: some View {
        AuthHeaerView(title1: "Hello", title2: "Welcome back")
    }
}
