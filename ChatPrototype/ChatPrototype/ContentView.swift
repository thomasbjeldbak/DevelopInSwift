//
//  ContentView.swift
//  ChatPrototype
//
//  Created by Thomas Bjeldbak on 06/05/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Knock, knock!")
                .padding()
                .background(Color.yellow, in: RoundedRectangle(cornerRadius: 8))
                .shadow(radius: 5)
            Text("Who's there?")
                .padding()
                .background(Color.teal, in: RoundedRectangle(cornerRadius: 8))
                .shadow(radius: 5)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
