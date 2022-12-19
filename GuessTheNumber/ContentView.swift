//
//  ContentView.swift
//  GuessTheNumber
//
//  Created by Armen Madoyan on 19.12.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var targetValue = Int.random(in: 0...100)
    @State private var currentValue = Double.random(in: 0...100)
    
    @State private var score = 0
    @State private var showAlert = false
    
    var body: some View {
        
        VStack {
            HStack {
                Text("Move the slider closer to: ")
                    .padding()
                Text("\(targetValue)")
            }
            HStack(spacing: 15) {
                Text("0")
                SliderView(currentValue: $currentValue)
                Text("100")
            }
            VStack {
                ButtonView(label: "Check me!", action: checkNumber)
                    .alert("Score", isPresented: $showAlert, actions: {}){
                        Text("Your score is \(score)")
                    }
                ButtonView(label: "New Game!", action: startNewGame)
            }
            
        }
        .padding()
    }
    
    private func computeScore() -> Int {
        let difference = abs(targetValue - lround(currentValue))
        return 100 - difference
    }
    
    private func checkNumber() {
        if lround(currentValue) > targetValue {
            score = computeScore()
        } else {
            score = computeScore()
        }
        showAlert.toggle()
    }
    
    private func startNewGame() {
        score = 0
        targetValue = Int.random(in: 0...100)
        currentValue = Double.random(in: 0...100)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
