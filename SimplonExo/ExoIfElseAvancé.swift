//
//  ExoTextField.swift
//  SimplonExo
//
//  Created by Hugo Saynac on 02/11/2021.
//

import SwiftUI

struct ExoIfElseAvance: View {
    @State var composantName: String = ""
    var body: some View {
        Form {
            Text("Quel composant permet de placer des vues les unes sous les autres")
                .font(.title)
            TextField("Réponse", text: $composantName, prompt: Text("nom du composant?"))
            if composantName == "VStack" {
                Text("Bravo ! C'est bien un VStack").foregroundColor(.green)
            } else if composantName.isEmpty {
                EmptyView()
            } else {
                Text("Pas tout à fait").foregroundColor(.orange)
            }
        }
    }
}

struct ExoIfElseAvance_Previews: PreviewProvider {
    static var previews: some View {
        ExoIfElseAvance()
    }
}
