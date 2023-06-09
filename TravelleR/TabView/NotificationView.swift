//
//  NotificationView.swift
//  TravelleR
//
//  Created by Rosa Jeon on 2023-06-08.
//

import SwiftUI

struct NotificationView: View {
    var body: some View {
        ZStack {
            Color.init(red: 0.992, green: 0.992, blue: 0.953)
                .ignoresSafeArea()
            
            Text("NotificationView")
        }
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView()
    }
}
