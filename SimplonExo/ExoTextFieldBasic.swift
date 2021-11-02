//
//  ExoTextField.swift
//  SimplonExo
//
//  Created by Hugo Saynac on 02/11/2021.
//

import SwiftUI

struct ExoTextField: View {
    @State var myText: String = ""
    var body: some View {
        Form {
            Section {
                TextField("Fill me", text: $myText)
                HStack {
                    Text("You wrote: ")
                    Spacer()
                    Text(myText)
                }
            } footer: {
                Text("Use a **Form** to get this appearance")
            }
        }
        
    }
}

struct ExoTextField_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ExoTextField().navigationTitle("Textfield")
        }
    }
}
