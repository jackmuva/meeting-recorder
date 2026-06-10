//
//  ContentView.swift
//  meeting-recorder
//
//  Created by Jack Mu on 6/9/26.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ScrollView{
            HStack{
                FirstView(name: "Jack", num: 7)
                    .padding()
                VStack {
                    Text("hi")
                    Image(systemName: "square.and.arrow.up")
                }
            }.padding([.bottom], 800)
            HStack{
                FirstView(name: "Jack", num: 7)
                    .padding()
                VStack {
                    Text("hi")
                    Image(systemName: "square.and.arrow.up")
                }
            }
        }
    }
}

struct FirstView: View {
    let name: String
    let num: Int
    var symbol: String {
        if num > 4 {
            return "sun.max.fill"
        }else{
            return "cloud.rain.fill"
        }
    }
    
    var body: some View {
        VStack {
            Text("Hello, \(name)").padding().background(Color.yellow, in: RoundedRectangle(cornerRadius: 5))
            Image(systemName: symbol).font(Font.largeTitle)
        }
    }
}
#Preview {
    WelcomeView()
}
