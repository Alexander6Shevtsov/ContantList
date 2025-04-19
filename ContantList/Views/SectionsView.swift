//
//  SectionsView.swift
//  ContantList
//
//  Created by Alexander Shevtsov on 16.04.2025.
//

import SwiftUI

struct SectionsView: View {
    
    let contacts: [Person]
    
    var body: some View {
        NavigationStack {
            List(contacts) { person in
                Section {
                    Label(person.phoneNumber, systemImage: "phone")
                    Label(person.email, systemImage: "tray")
                } header: {
                    Text(person.fullName)
                        .font(.headline)
                }
            }
            .listStyle(.plain)
            .navigationTitle("Contacts List") // заголовок
        }
    }
}

#Preview {
    SectionsView(contacts: Person.getContactList())
}
