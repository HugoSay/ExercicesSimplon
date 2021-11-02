//
//  AppStorageExemple.swift
//  SimplonExo
//
//  Created by Hugo Saynac on 02/11/2021.
//

import SwiftUI

/// Appstorage permet de stocker une valeur de manière persistante dans le device.
/// Il faut une clé (ici username) et une valeur par défaut.
/// Ensuite, la variable peut s'utiliser comme une @State var
///
/// Meme apres le redémarrage de l'app, la valeur reste la même
struct AppStorageExemple: View {

    @AppStorage("username") var userName: String = "Inconnu"
    
    var body: some View {
        VStack {
            Text("Hello! " + userName)
            TextField("username", text: $userName)
        }
    }
}

struct AppStorageExemple_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageExemple()
    }
}
