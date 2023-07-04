//
//  HomeViewModel.swift
//  CryptoCurrency
//
//  Created by Sonu Kumar on 04/07/23.
//

import Foundation
import SwiftUI

class HomeViewModel : ObservableObject {
    @Published var coins = [Coin]()
    @Published var topMovingCoins = [Coin]()
    
    init() {
        fetchCoinData()
    }
    
    func fetchCoinData() {
        let urlString = "https://api.coingecko.com/api/v3/coins/markets?vs_currency=inr&order=market_cap_desc&per_page=100&page=1&sparkline=true&price_change_percentage=24h"
        
        guard let url = URL(string: urlString) else {return}
        
        print("fetching url \(url)")
        
        URLSession.shared.dataTask(with: url) { data, res, err in
            if let err = err {
                print("DEBUG: Error \(err.localizedDescription)")
                return
            }
            
            guard let data = data else { return }
            
            do{
                let coins = try JSONDecoder().decode([Coin].self, from: data)
                print("DEBUG: Coins \(coins)")
                DispatchQueue.main.async {
                    self.coins = coins
                    self.configureTopMoverCoins()
                }
            }catch let error {
                print("DEBUG: Failed to decode with error : \(error)")
            }
            
            
        }.resume()
    }
    
    func configureTopMoverCoins() {
        let topMovers = coins.sorted(by: { $0.priceChangePercentage24H > $1.priceChangePercentage24H })
        
        self.topMovingCoins = Array(topMovers.prefix(10))
    }
}

