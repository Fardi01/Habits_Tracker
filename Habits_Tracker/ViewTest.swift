//
//  ViewTest.swift
//  Habits_Tracker
//
//  Created by fardi Issihaka on 29/04/2022.
//

import SwiftUI

struct ViewTest: View {
    var body: some View {
        
        HStack(alignment: .top) {
            Image(systemName: "video")
                .font(.system(size: 30))
                .padding()
            Spacer()
            
            VStack(alignment: .center) {
                Image("course")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 120, height: 120)
                    .clipped()
                    .cornerRadius(70)
                    .padding()
                Text("Fardi")
                    .font(.system(.title2))
                    .fontWeight(.semibold)
                Text("870 abonnés")
            }
            Spacer()
            
            Image(systemName: "message")
                .font(.system(size: 30))
                .padding()
        }
    }
}

struct ViewTest_Previews: PreviewProvider {
    static var previews: some View {
        ViewTest()
    }
}
