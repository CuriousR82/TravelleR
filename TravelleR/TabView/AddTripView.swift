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
    
    let icons = ["person.3.sequence.fill", "location.fill", "calendar", "bus.fill", "handbag.fill", "fork.knife"]
    var addTripOptions: [AddTripOptions]
    
    var body: some View {
        NavigationStack {
            ZStack {
                bgColour.ignoresSafeArea()
                
                // insert code for the current view here
                VStack (alignment: .leading, spacing: 0.5) {
                    Text("Add a new trip!")
                        .font(Font.custom("PTSans-Bold", size: 32))
                        .padding(.leading, 2)
                        .padding(.top, 16)
                        .padding(.horizontal)
                        .padding(.bottom, 12)
                    
                    VStack {
                        ScrollView(.vertical, showsIndicators: false) {
                            VStack {
                                // VStack for each section
                                // People
//                                Spacer()
                          
                                ForEach(addTripOptions) { option in
                                    NavigationLink(destination: Text(option.title)) {
                                        HStack {
                                            Circle()
                                                .frame(width: 50)
                                                .foregroundColor(accentColour)
                                                .overlay {
                                                    VStack {
                                                        Image(systemName: option.icon)
                                                            .foregroundColor(bgColour)
                                                    }
                                                }
                                                .padding(.trailing, 10)
                                            Text(option.title)
                                                .font(Font.custom("PTSans-Bold", size: 24))
                                                .foregroundColor(.black)
                                            Spacer()
                                            Image(systemName: "chevron.forward")
                                                .foregroundColor(accentColour)
                                        }
                                        .padding([.leading, .trailing], 8)
                                    }
                                }
                                .padding(.top, 16)
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
        AddTripView(addTripOptions: AddTripOptions.options)
    }
}
