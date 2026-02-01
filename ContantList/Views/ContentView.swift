//
//  ContentView.swift
//  ContantList
//
//  Created by Alexander Shevtsov on 16.04.2025.
//

import SwiftUI

struct ContentView: View {
	private let contacts = Person.getContactList()
	
	var body: some View {
		TabView {
			ContactListView(contacts: contacts)
				.tabItem {
					Image(systemName: "person.2")
					Text("Contacts")
				}
			
			SectionsView(contacts: contacts)
				.tabItem {
					Image(systemName: "phone")
					Text("Numbers")
				}
		}
	}
}

#Preview {
	ContentView()
}
