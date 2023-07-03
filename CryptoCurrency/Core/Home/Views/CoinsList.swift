//
//  CoinList.swift
//  CryptoCurrency
//
//  Created by Sonu Kumar on 03/07/23.
//

import SwiftUI

struct CoinsList: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("All Coins")
                .font(.headline)
                .padding()
            
            HStack{
                Text("Coins")
                Spacer()
                Text("Price")
            }
            .font(.caption)
            .foregroundColor(.gray)
            .padding(.horizontal)
            
            ScrollView {
                ForEach(0..<50, id: \.self) { _ in
                    CoinView()
                }
            }
        }
    }
}

struct CoinList_Previews: PreviewProvider {
    static var previews: some View {
        CoinsList()
    }
}
