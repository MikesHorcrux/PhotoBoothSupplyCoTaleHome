//
//  ContentView.swift
//  testing
//
//  Created by Mike  Van Amburg on 6/19/22.
//

import SwiftUI

struct ContentView: View {
    @State var showMeCats: Bool = false
    var body: some View {
        NavigationView {
            VStack {
                if showMeCats {
                    CatFeed()
                } else {
                    Text("Having a long day? Need a pick me up?")
                        .font(.title)
                        .multilineTextAlignment(.center)
                        .padding()
                        .padding(.bottom, 100)
                    Button {
                        showMeCats.toggle()
                    } label: {
                        Text("Show Me The Cats!")
                            .textCase(.uppercase)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.blue)
                            .clipShape(Capsule())
                    }
                }
            }
            .navigationTitle("")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(leading:
                Text("Cats For Vets")
                    .font(.title3)
                    .bold()
            ,
                                trailing:
                                    Link(
                                        destination: URL(string: "https://petsforvets.com/donate")!,
                                        label: {
                                            HStack{
                                                Text("Donate")
                                                Image(systemName: "dollarsign.circle")
                                            }
                                            .foregroundColor(.white)
                                            .padding(.horizontal)
                                            .padding(.vertical, 5)
                                            .background(Color.green)
                                            .clipShape(Capsule())
                                        }))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
