//
//  SettingsRowView.swift
//  Frutus
//
//  Created by Bashayr on 28/10/1442 AH.
//

import SwiftUI

struct SettingsRowView: View {
    //    MARK: - PROPERTIE

    var name: String
    var contents: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil

    //    MARK: - BODY
    var body: some View {
        
        VStack {
            Divider().padding(.vertical, 4)
            HStack {
                Text(name)
                    .foregroundColor(Color.gray)
                Spacer()
                if (contents != nil) {
                    Text(contents!)
                } else if (linkLabel != nil && linkDestination != nil) {
                    Link(linkLabel!, destination: URL(string: "https://\(String(describing: linkDestination!))")!)
                    Image(systemName: "arrow.up.right.square")
                        .foregroundColor(.pink)
                } else {
                    EmptyView()
                }
            }
        }
    }
}



    //    MARK: - PREVIEW
struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsRowView(name: "Developer", contents: "Bashayr")
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
            SettingsRowView(name: "Website", linkLabel: "SwiftUI MasterClass", linkDestination: "swiftuimasterclass.com")
                .preferredColorScheme(.dark)
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
        }
    }
}
