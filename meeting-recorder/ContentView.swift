//
//  ContentView.swift
//  meeting-recorder
//
//  Created by Jack Mu on 6/9/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, Jack!").padding().background(Color.yellow, in: RoundedRectangle(cornerRadius: 5))
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
