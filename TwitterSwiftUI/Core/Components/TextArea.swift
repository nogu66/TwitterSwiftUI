//
//  TextArea.swift
//  TwitterSwiftUI
//
//  Created by YutaNoguchi on 2023/05/30.
//

import SwiftUI

struct TextArea: View {
    @Binding var text: String
    let placeholder: String
    
    init(_ placeholder: String, text: Binding<String>) {
        self.placeholder = placeholder
        self._text = text
        // for iOS < 16
        // UITextView.appearance().backgroundColor = .clear　
    }
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            
            if text.isEmpty {
                Text(placeholder)
                    .foregroundColor(Color(.placeholderText))
                    .padding(.horizontal, 8)
                    .padding(.vertical, 12)
            }
            
            TextEditor(text: $text)
                // for iOS >= 16
                .scrollContentBackground(Visibility.hidden)
                .padding(4)
        }
        .font(.body)
    }
}

