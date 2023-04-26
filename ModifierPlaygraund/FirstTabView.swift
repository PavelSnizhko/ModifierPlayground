//
//  FirstTabView.swift
//  ModifierPlaygraund
//
//  Created by Павло Сніжко on 26.04.2023.
//

import SwiftUI

struct FirstTabView: View {
    
    @State var title = "View one"
    
    var body: some View {
        Text(title)
            .onAppear(perform: {
                print("onAppear triggered")
            })
            .onDisappear(perform: {
                print("onDisappeared triggered")
            })
            .task(priority: .background) {
                title = await changeTitle()
            }.onHover { flag in
                if flag {
                    print("View is hovered")
                } else {
                    print("View is not hovered")
                }
            }
    }
    
    func changeTitle() async -> String {
        Thread.sleep(forTimeInterval: 6)
        return "Async task complete"
    }
    
}

