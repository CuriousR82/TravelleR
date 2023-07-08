//
//  ContentView.swift
//  TravelleR
//
//  Created by Rosa Jeon on 2023-06-04.
//

import SwiftUI

struct ContentView: View {
    
    let bgColour = Color.init(red: 0.992, green: 0.992, blue: 0.953)
    let accentColour = Color.init(red: 0.2941, green: 0.4902, blue: 0.5922)
    
    var body: some View {
        
        TabView {
            NavigationStack {
                ZStack {
                    bgColour.ignoresSafeArea()
                    
                    // insert code for the current view here
                    VStack (spacing: 0.5) {
                        Text("ContentView")
                            .padding()
                            .frame(maxHeight: .infinity)
                        
                        Rectangle()
                            .fill(Color.clear)
                            .frame(height: 5)
                            .background(accentColour)
                    }
                }
            }
            .tabItem {
                Image(systemName: "house.fill")
            }
            
            AddTripView(addTripOptions: AddTripOptions.options)
                .tabItem {
                    Image(systemName: "plus")
                }
            NotificationView()
                .tabItem {
                    Image(systemName: "bell.fill")
                }
            ProfileView()
                .tabItem {
                    Image(systemName: "person.crop.circle.fill")
                }
        }
        .tint(bgColour)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
