//
//  AddTripOptions.swift
//  TravelleR
//
//  Created by Rosa Jeon on 2023-07-06.
//

import Foundation
import SwiftUI

struct AddTripOptions: Identifiable {
    let id: UUID
    var title: String
    var icon: String
    var view: any View
    
    init(id: UUID = UUID(), title: String, icon: String, view: any View) {
        self.id = id
        self.title = title
        self.icon = icon
        self.view = view
    }
}

//let icons = ["person.3.sequence.fill", "location.fill", "calendar", "bus.fill", "handbag.fill", "fork.knife"]

extension AddTripOptions {
    static var options: [AddTripOptions] {
        [
            AddTripOptions(title: "Friends", icon: "person.3.sequence.fill", view: FriendsView()),
            AddTripOptions(title: "Location", icon: "location.fill", view: LocationView()),
            AddTripOptions(title: "Dates", icon: "calendar", view: DatesView()),
            AddTripOptions(title: "Transportation", icon: "bus.fill", view: TransportationView()),
            AddTripOptions(title: "Items", icon: "handbag.fill", view: ItemsView()),
            AddTripOptions(title: "Food", icon: "fork.knife", view: FoodView())
        ]
    }
}
