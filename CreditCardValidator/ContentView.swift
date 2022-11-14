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

func isValidNumber(_ input: String) -> Bool {
    let num = input.replacingOccurrences(of: "-", with: "")
    let count = num.count
    var sum = 0
    var secondDigit = false
    
    for i in (0..<count).reversed() {
        let index = num.index(num.startIndex, offsetBy: i)
        var digit = num[index].wholeNumberValue!
        
        if (secondDigit) {
            digit *= 2
        }
        
        sum += digit / 10
        sum += digit % 10
        secondDigit.toggle()
    }
    
    return (sum % 10) == 0
}

extension String {
    var isNumber: Bool {
        let digitsCharacters = CharacterSet(charactersIn: "0123456789")
        return CharacterSet(charactersIn: self).isSubset(of: digitsCharacters)
    }
}
