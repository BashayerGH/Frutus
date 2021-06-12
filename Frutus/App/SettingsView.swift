//
//  SettingsView.swift
//  Frutus
//
//  Created by Bashayr on 28/10/1442 AH.
//

import SwiftUI

struct SettingsView: View {
    //    MARK: _ PROPERTIES
    
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false


    //    MARK: - BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    //    MARK: _ section 1
                    GroupBox(label: SettingsLabelView(labelText: "Frutus",
                      labelImage: "info.circle")
                    ) {
                        Divider().padding(.vertical, 4)
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            Text("Most fruits are bla bla bla...")
                                .font(.footnote)
                        }
                    }


                    //    MARK: _ section 3
                    GroupBox(label: SettingsLabelView(labelText: "customization",
                      labelImage: "paintbrush")
                    ) {
                        Divider().padding(.vertical, 4)
                        Text("If you wish, you can retart the applicationnto toggle the switch...")
                            .padding(.vertical, 8)
                            .frame(minWidth: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboarding) {
                            if isOnboarding {
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.green)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.secondary)
                            }
                        }
                        .padding()
                        .background(Color(UIColor.tertiarySystemBackground)
                                        .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous)))
                    }

                    //    MARK: _ section 3
                    GroupBox(label: SettingsLabelView(labelText: "Application",
                      labelImage: "apps.iphone")
                    ) {
                        VStack(alignment: .center, spacing: 10) {
                            SettingsRowView(name: "Developer", contents: "Bashayr")
                            SettingsRowView(name: "Desiner", contents: "Roberto")
                            SettingsRowView(name: "Desiner", contents: "Roberto")
                            SettingsRowView(name: "Website", linkLabel: "SwiftUI MasterClass", linkDestination: "swiftuimasterclass.com")
                            SettingsRowView(name: "Twitter", linkLabel: "@Bashayer_GH", linkDestination: "twitter.com/bashayer_GH")
                            SettingsRowView(name: "Swift UI", contents: "2.0")
                            SettingsRowView(name: "Version", contents: "1.1.0")
                        }
                    }

                } // VStack
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(
                    trailing:
                        Button(action: { presentationMode.wrappedValue.dismiss()
            }) {
                Image(systemName: "xmark")
                        }
                )
                .padding()
            }// scroll
        }
    }
}

    //    MARK: - PREVIEW
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
            
    }
}
