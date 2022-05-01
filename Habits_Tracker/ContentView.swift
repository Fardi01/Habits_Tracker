//
//  ContentView.swift
//  Habits_Tracker
//
//  Created by fardi Issihaka on 29/04/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            Image("course")
                .resizable()
                .scaledToFill()
                .frame(width: 80, height: 80)
                .clipped()
                .cornerRadius(10)
            .padding(.trailing, 8)
            VStack(alignment: .leading) {
                Text("Running")
                    .font(.system(.title2))
                    .fontWeight(.semibold)
                Text("Total: 85 minutes")
            }
            FavoriteButtonView()
            Spacer()
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
