//
//  Excercise.swift
//  SwiftUIButton
//
//  Created by kittawat phuangsombat on 2020/12/29.
//

import SwiftUI

struct Excercise: View {
    var body: some View {
        Button(action: {
            print("plus rotated")
        }) {
            Image(systemName: "plus")
        }
        .buttonStyle(CircularStyle())
    }
}
 struct CircularStyle: ButtonStyle{
    func makeBody(configuration:Self.Configuration) -> some View {
        configuration.label
            .font(.largeTitle)
            .padding()
            .background(Color.purple)
            .foregroundColor(.white)
            .clipShape(Circle())
            .rotationEffect(configuration.isPressed ? Angle (degrees: 135) : Angle(degrees: 0.0))
    }
}

struct Excercise_Previews: PreviewProvider {
    static var previews: some View {
        Excercise()
    }
}
