//
//  AddTripView.swift
//  TravelleR
//
//  Created by Rosa Jeon on 2023-06-08.
//

import SwiftUI

struct AddTripView: View {
    
    let bgColour = Color.init(red: 0.992, green: 0.992, blue: 0.953)
//    let bgColour = Color.init(red: 0.992, green: 0.9, blue: 0.9)
    let accentColour = Color.init(red: 0.2941, green: 0.4902, blue: 0.5922)
    
    let icons = ["person.3.sequence.fill", "location.fill", "calendar", "bus.fill", "gym.bag.fill", "fork.knife"]
    
    var body: some View {
        NavigationStack {
            ZStack {
                bgColour.ignoresSafeArea()
                
                // insert code for the current view here
                VStack (alignment: .leading, spacing: 0) {
                    Text("Add a new trip!")
                        .font(Font.custom("PTSans-Bold", size: 30))
                        .padding(.leading, 2)
                        .padding(.top, 16)
                        .padding(.horizontal)
                        .padding(.bottom, 12)
                    
                    VStack {
                        ScrollView(.vertical, showsIndicators: false) {
                            VStack {
                                // VStack for each section
                                // People
                                ForEach(icons, id: \.self) { icon in
                                    // wrapper stack
                                    VStack (spacing: 24) {
                                        VStack {
                                            HStack {
                                                Image(systemName: icon)
                                                Spacer()
                                                Image(systemName: "chevron.forward")
                                            }
                                            .padding([.leading, .bottom, .trailing], 2)
                                            
                                            Rectangle()
                                                .frame(height: 140)
                                                .cornerRadius(10)
                                                .foregroundColor(accentColour)
                                        }
//                                        Spacer()
                                        .padding(.bottom, 25)
                                    }
                                }
                            }
                        }
                        .padding(.horizontal)
                    }
                    
                    Rectangle()
                        .fill(Color.clear)
                        .frame(height: 5)
                        .background(accentColour)
                }
            }
        }
    }
}

struct AddTripView_Previews: PreviewProvider {
    static var previews: some View {
        AddTripView()
    }
}
