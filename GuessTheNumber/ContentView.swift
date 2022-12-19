//
//  ContentView.swift
//  GuessTheNumber
//
//  Created by Armen Madoyan on 19.12.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var number = 10
    @State private var value = 0.0
    var body: some View {
        VStack {
            HStack {
                Text("Move the slider closer to: ")
                    .padding()
                Text("\(number)")
                
            }

            Slider(value: $value, in: 0...100, step: 1)
            ButtonView(label: "Check me!", action: {})
            ButtonView(label: "New Game!", action: {})
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
