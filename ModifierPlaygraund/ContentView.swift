//
//  ContentView.swift
//  ModifierPlaygraund
//
//  Created by Павло Сніжко on 26.04.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            TabView {
                FirstTabView()
                    .tabItem {
                        Image(systemName: "01.circle")
                        Text("First")
                    }
                 
                SecondTabView()
                    .tabItem {
                        Image(systemName: "02.circle")
                        Text("Second")
                    }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
