//
//  ContentView.swift
//  TravelleR
//
//  Created by Rosa Jeon on 2023-06-04.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color.init(red: 0.992, green: 0.992, blue: 0.953)
                    .ignoresSafeArea()
                
                VStack {
                    Spacer()
                    Text("this is the home screen")
                    Spacer()
                    NavigationLink(destination: TripsView(trips: ["Your mom's bedroom"])){
                        Text("This is a link")
                    }
                    Spacer()
                }.padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
