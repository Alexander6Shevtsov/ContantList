//
//  ContactListView.swift
//  ContantList
//
//  Created by Alexander Shevtsov on 16.04.2025.
//

import SwiftUI

struct ContactListView: View {
	let contacts: [Person]
	
	var body: some View {
		NavigationStack {
			List(contacts) { person in
				NavigationLink(
					person.fullName,
					destination: PersonView(person: person)
				)
			}
			.listStyle(.plain)
			.navigationBarTitle("Contact List")
		}
	}
}

#Preview {
	ContactListView(contacts: Person.getContactList())
}
