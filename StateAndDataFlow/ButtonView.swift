//
//  SwiftUIView.swift
//  StateAndDataFlow
//
//  Created by Elenka on 19.09.2022.
//

import SwiftUI

struct ButtonView: View {
    let backgroundColor: Color
    let textButton: String
    @ObservedObject var timer: TimeCounter
    
    var body: some View {
        Button(action: timer.startTimer) {
            Text(textButton)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .frame(width: 200, height: 60)
        .background(backgroundColor)
        .cornerRadius(20)
        .overlay(RoundedRectangle(cornerRadius: 20).stroke(.black, lineWidth: 4))
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(backgroundColor: .red, textButton: "Logout", timer: TimeCounter())
    }
}
