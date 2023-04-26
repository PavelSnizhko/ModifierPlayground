//
//  SecondTabView.swift
//  ModifierPlaygraund
//
//  Created by Павло Сніжко on 26.04.2023.
//

import SwiftUI

struct SecondTabView: View {
    
    @State private var text: String = ""
    
    var body: some View {
        TextEditor(text: $text)
            .scrollContentBackground(.hidden)
            .background(Color.yellow)
            .padding()
            .onChange(of: text, perform: { value in
                print("onChange triggered")
            })
    }
}

struct SecondTabView_Previews: PreviewProvider {
    static var previews: some View {
        SecondTabView()
    }
}
