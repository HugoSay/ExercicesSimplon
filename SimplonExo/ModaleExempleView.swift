//
//  ModaleExempleView.swift
//  SimplonExo
//
//  Created by Hugo Saynac on 02/11/2021.
//

import SwiftUI

struct ModaleExempleView: View {
    // lorsque should display sheet sera a vrai, la modale s'affichera.
    @State var shouldDisplaySheet: Bool = false
    var body: some View {
        VStack {
            Text("Tapping the button will open a sheet view")
            Button("Open sheet") {
                shouldDisplaySheet = true
            }
        }
        .sheet(isPresented: $shouldDisplaySheet) {
            // vue a afficher dans la modale/sheet
            ExoButtons()
        }
    }
}


struct ModaleExempleView_Previews: PreviewProvider {
    static var previews: some View {
        ModaleExempleView()
    }
}
