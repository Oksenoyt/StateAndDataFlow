//
//  RegisterView.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 14.09.2022.
//

import SwiftUI

struct RegisterView: View {
    @State private var name = ""
    @EnvironmentObject private var user: UserManager
    @EnvironmentObject private var nameCounter: NameCounter
    @State private var buttonState = true
    @State private var colorCount = Color.red
    
    private var count: Int {
        name.count
    }
    
    
    var body: some View {
        VStack {
            HStack {
                TextField("Enter your name", text: $name)
                    .multilineTextAlignment(.center)
                Text(count.formatted())
                    .padding(.trailing)
                    .foregroundColor(colorCount)
            }
            Button(action: registerUser) {
                HStack {
                    Image(systemName: "checkmark.circle")
                    Text("OK")
                }
            }.disabled(buttonState)
        }
    }
    
    private func registerUser() {
        if !name.isEmpty {
            user.name = name
            user.isRegister.toggle()
        }
    }
    
    private mutating func nameValidation() {
        if count < 3 {
            colorCount = .green
            buttonState = false
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
