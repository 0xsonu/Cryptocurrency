//
//  CoinList.swift
//  CryptoCurrency
//
//  Created by Sonu Kumar on 03/07/23.
//

import SwiftUI

struct CoinsList: View {
    @StateObject var homeViewModel : HomeViewModel
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
                ForEach(homeViewModel.coins) { coin in
                    CoinView(coin: coin)
                }
            }
        }
    }
}

//struct CoinList_Previews: PreviewProvider {
//    static var previews: some View {
//        CoinsList()
//    }
//}
