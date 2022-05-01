//
//  FavoriteButtonView.swift
//  Habits_Tracker
//
//  Created by fardi Issihaka on 29/04/2022.
//

import SwiftUI

struct FavoriteButtonView: View {
    
    // MARK: - Properties
    // Je déclare un boolean pour connaitre l'etat du bouton
    // J'utilise un property wrapper @State pour avertir que la propriété est amené à changer
    @State var isLiked: Bool = false
    let onColor: Color = .red
    let offColor: Color = .gray
    
    // MARK: - View
    var body: some View {
        Button {
            toggle()
        } label: {
            // J'utilise un ternaire pour changer le bouton si il est cliqué
            Image(systemName: isLiked ? "heart.fill" : "heart")
                .font(.system(size: 25))
                .padding(10)
                .foregroundColor(isLiked ? onColor : offColor)
        }
    }
    
    // MARK: - Private
    private func toggle() {
        // Permet d'inverser les valeurs entre true et false
        isLiked.toggle()
    }
    
}


// MARK: - Previews
struct FavoriteButtonView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            FavoriteButtonView(isLiked: true)
            FavoriteButtonView(isLiked: false)
        }.previewLayout(.sizeThatFits)
    }
}
