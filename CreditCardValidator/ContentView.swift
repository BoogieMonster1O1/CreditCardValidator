//
//  ContentView.swift
//  CreditCardValidator
//
//  Created by Shrish Deshpande on 11/14/22.
//

import SwiftUI

struct ContentView: View {
    @State private var text: String = ""
    @State private var valid: Bool? = nil
    
    var body: some View {
        VStack {
            Text("Hello, world!")
                .font(.largeTitle)
                .padding(.all, 3.0)
                .accessibilityLabel("Credit Card Validator")
            HStack {
                Spacer()
                TextField("Credit Card Number", text: $text)
                    .padding(.all)
                    .accessibilityLabel("Credit Card Number")
                Button(action: {
                    
                }, label: {
                    Text("Verify")
                        .padding(.all)
                })
                    .accessibilityLabel("Validate Card Number")
                Spacer()
            }
            Spacer()
            if let valid = valid {
                if (valid) {
                    Text("Valid")
                } else {
                    Text("Invalid")
                }
            }
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
