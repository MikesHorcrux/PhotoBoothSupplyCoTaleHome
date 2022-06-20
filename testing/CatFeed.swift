//
//  CatFeed.swift
//  testing
//
//  Created by Mike  Van Amburg on 6/19/22.
//

import SwiftUI

struct CatFeed: View {
    var body: some View {
        ScrollView {
            ForEach(1...40, id: \.self) { _ in
                AsyncImage(url: URL(string: "https://cataas.com/cat")) { image in
                    image
                        .resizable()
                        .scaledToFill()
                    
                } placeholder: {
                    ProgressView()
                        .frame(width: 300, height: 300)
                }
                .background(Color.gray)
                .clipShape(RoundedRectangle(cornerRadius: 23))
                .padding()
            }
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
                })
        }
    }
}

struct CatFeed_Previews: PreviewProvider {
    static var previews: some View {
        CatFeed()
    }
}
