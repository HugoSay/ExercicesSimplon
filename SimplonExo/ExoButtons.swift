//
//  ExoButtons.swift
//  SimplonExo
//
//  Created by Hugo Saynac on 02/11/2021.
//

import SwiftUI

struct ExoButtons: View {
    @State var basicButtonTapped: Int = 0
    @State var complexButtonTapped: Int = 0
    var body: some View {
        VStack {
            Text("Basic buttons").padding()
            HStack {
                // bouton simple avec juste un texte
                Button("I'm a basic button") {
                    // action du bouton
                    basicButtonTapped += 1
                }
                Spacer()
                Text(basicButtonTapped.description)
            }
           
            Divider().frame(height: 10)
            Text("Complex buttons")
            HStack {
                // Exemple 1 bouton complexe avec les parenthèse et les noms d'arguments
                Button(action: {
                    // action lors du tap
                    complexButtonTapped -= 1
                }, label: {
                    Text("-")
                        .padding(20)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .clipShape(Circle())
                })
                
                Spacer()
                Text(complexButtonTapped.description)
                Spacer()
//                Exemple 2 bouton complexe sans parentheses (version autocomplete)
                Button {
                    // action
                    complexButtonTapped += 1
                } label: {
                    Text("+")
                        .padding(20)
                        .background(Color.red)
                        .foregroundColor(.white)
                        .clipShape(Circle())
                }

            }
        }
        .navigationTitle("Buttons")
        .padding()
    }
}

struct ExoButtons_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ExoButtons()
        }
    }
}
