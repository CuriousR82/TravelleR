//
//  ContentView.swift
//  TravelleR
//
//  Created by Rosa Jeon on 2023-06-04.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
            TabView {
                NavigationStack {
                    ZStack {
                        Color.init(red: 0.992, green: 0.992, blue: 0.953)
                            .ignoresSafeArea()
                        Text("ContentView")
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                    }
                }
                    .tabItem {
                        Label("", systemImage: "house.fill")
                            .labelStyle(.iconOnly)
                    }
                
                AddTripView()
                    .tabItem {
                        Label("", systemImage: "plus")
                            .labelStyle(.iconOnly)
                    }
                NotificationView()
                    .tabItem {
                        Label("", systemImage: "bell.fill")
                            .labelStyle(.iconOnly)
                    }
                ProfileView()
                    .tabItem {
                        Label("", systemImage: "person.crop.circle.fill")
                            .labelStyle(.iconOnly)
                    }
            }
            
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
