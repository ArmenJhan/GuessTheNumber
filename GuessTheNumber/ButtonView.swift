//
//  Button.swift
//  GuessTheNumber
//
//  Created by Armen Madoyan on 19.12.2022.
//

import SwiftUI

struct ButtonView: View {
    let label: String
    let action: () -> ()
    
    var body: some View {
        Button(label, action: action)
            .padding()
        
    }
}

struct Button_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(label: "Button", action: {} )
    }
}
