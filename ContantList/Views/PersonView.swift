//
//  PersonView.swift
//  ContantList
//
//  Created by Alexander Shevtsov on 16.04.2025.
//

import SwiftUI

struct PersonView: View {
    
    let person: Person
    
    var body: some View {
        List {
            HStack {
                Spacer()
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .padding()
                Spacer()
            } // Imag между Spacer для коррекции размера
            // переиспользуемый код пример
            Label(person.phoneNumber, systemImage: "phone")
            Label(person.email, systemImage: "tray")
        }
        .navigationBarTitle(person.fullName)
    }
}

#Preview {
    PersonView(person: Person.getContactList().first!)
} // в превью можно "!"
