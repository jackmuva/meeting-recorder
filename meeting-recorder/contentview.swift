//
//  contentview.swift
//  meeting-recorder
//
//  Created by Jack Mu on 6/9/26.
//
import SwiftUI

let gradientColors: [Color] = [
    .gradientTop,
    .gradientBottom
]

struct ContentView: View {
    var body: some View{
        TabView {
            WelcomeView()
            FeatureView()
        }.tabViewStyle(.page)
            .background(Gradient(colors: gradientColors))
            .opacity(0.5)
    }
}

#Preview {
    ContentView()
}
