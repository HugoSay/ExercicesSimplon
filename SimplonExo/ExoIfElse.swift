//
//  ExoIfElse.swift
//  SimplonExo
//
//  Created by Hugo Saynac on 01/11/2021.
//

import SwiftUI

struct ExoIfElse: View {
    @State var useBlackBackground: Bool = false
    
    var body: some View {
        ZStack {
            if useBlackBackground {
                Color.black
            } else {
                Color.blue
            }
        Toggle("backgound is black", isOn: $useBlackBackground)
                .foregroundColor(.white)
                .padding()
        }
    }
}


struct ExoIfElse_Previews: PreviewProvider {
    static var previews: some View {
        ExoIfElse()
    }
}
