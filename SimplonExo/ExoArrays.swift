//
//  ExoArrays.swift
//  SimplonExo
//
//  Created by Hugo Saynac on 02/11/2021.
//

import SwiftUI

struct ExoArrays: View {
    @State var nouveauNom: String = ""
    @State var names: [String] = ["Bob", "Joe", "Jimmy", "Jack"]
    var body: some View {
        List {
            ForEach(names, id: \.self) { name in
                Text(name)
            }
            Button("Ajouter") {
                names.append("Hugo")
            }
            Button("Supprimer") {
                names.removeLast()
            }
            HStack {
                TextField("Nouveau nom", text: $nouveauNom)
                Button("Ajouter") {
                    names.append(nouveauNom)
                    nouveauNom = ""
                }
            }
        }
    }
}

struct ExoArrays_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ExoArrays().navigationTitle("Exo arrays")
        }
    }
}
