//
//  SourceLinkView.swift
//  Frutus
//
//  Created by Bashayr on 28/10/1442 AH.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
        HStack {
            Text("Heh!")
            Spacer()
            Link("Wikipedia", destination: URL(string: "https://wikipedia.com")!)
            Image(systemName: "arrow.up.right.square")
        }
        .font(.footnote)
//        .foregroundColor(Color(red: 1, green: 2, blue: 0))
    }
}

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
