//
//  features.swift
//  meeting-recorder
//
//  Created by Jack Mu on 6/9/26.
//

import SwiftUI

struct FeatureView: View {
    @State private var randomNum: Int = 1
    
    var body: some View {
        ScrollView{
            ScrollView([.horizontal]){
                HStack{
                    ForEach(4...7, id: \.description){ num in
                        SecondView(name: "Maria", num: num)
                    }
                    SecondView(name: "Jack", num: 7)
                        .padding()
                    VStack {
                        Text("hi")
                        Image(systemName: "square.and.arrow.up")
                    }
                    Button("Roll", systemImage: "plus.circle.fill"){
                        withAnimation{
                            randomNum = Int.random(in: 1...100)
                        }
                    }
                    Text("\(randomNum)")
                }
            }.padding([Edge.Set.bottom], 200)
            HStack{
                SecondView(name: "Jack", num: 7)
                    .padding()
                VStack {
                    Text("hi")
                    Image(systemName: "square.and.arrow.up")
                }
            }
        }
    }
}

struct SecondView: View {
    let name: String
    let num: Int
    var symbol: String {
        num > 4 ? "sun.max.fill" : "cloud.rain.fill"
    }
    
    var body: some View {
        VStack {
            Text("Bye, \(name)").padding().background(Color.yellow, in: RoundedRectangle(cornerRadius: 5))
            Image(systemName: symbol).font(Font.largeTitle)
        }
    }
}

#Preview {
    FeatureView().frame(maxHeight: .infinity)
}
