//
//  TripsView.swift
//  TravelleR
//
//  Created by Toasted Waffle on 2023-06-08.
//

import SwiftUI

struct TripsView: View {
    let trips: [String]
    
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        NavigationStack{
            List(trips.indices, id: \.self) { index in
                VStack{
                    Text(trips[index])
                }
            }
        }
    }
}

struct TripsView_Previews: PreviewProvider {
    static var previews: some View {
        TripsView(trips: ["Toronto", "Selkirk"])
    }
}
