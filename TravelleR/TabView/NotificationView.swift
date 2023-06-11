//
//  NotificationView.swift
//  TravelleR
//
//  Created by Rosa Jeon on 2023-06-08.
//

import SwiftUI

struct NotificationView: View {
    
    let bgColour = Color.init(red: 0.992, green: 0.992, blue: 0.953)
    let accentColour = Color.init(red: 0.2941, green: 0.4902, blue: 0.5922)
    
    var body: some View {
        NavigationStack {
            ZStack {
                bgColour.ignoresSafeArea()
                
                // insert code for the current view here
                VStack {
                    Text("NotificationView")
                        .padding()
                        .frame(maxHeight: .infinity)
                    
                    Rectangle()
                        .fill(Color.clear)
                        .frame(height: 5)
                        .background(accentColour)
                }
            }
        }
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView()
    }
}
