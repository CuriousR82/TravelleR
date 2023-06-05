//
//  SplashScreenView.swift
//  TravelleR
//
//  Created by Rosa Jeon on 2023-06-05.
//

import SwiftUI

struct SplashScreenView: View {
    // state variables
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.0
    
    var body: some View {
        if isActive {
            ContentView()
        } else {
            ZStack {
                Color.init(red: 0.992, green: 0.992, blue: 0.953)
                    .ignoresSafeArea()
                
                VStack {
                    VStack {
                        Text("TravelleR")
                            .font(Font.custom("PTSans-Bold", size: 50))
                    }
                    .scaleEffect(size)
                    .opacity(opacity)
                    .onAppear {
                        withAnimation(.easeIn(duration: 1.5)) {
                            self.size = 0.9
                            self.opacity = 1.0
                        }
                    }
                }
                
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
            
        }
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
