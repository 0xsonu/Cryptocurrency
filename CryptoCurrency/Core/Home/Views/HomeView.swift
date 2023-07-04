//
//  HomeView.swift
//  CryptoCurrency
//
//  Created by Sonu Kumar on 03/07/23.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var homeViewModel = HomeViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                TopMoversView()
                Divider()
                
                CoinsList(homeViewModel: homeViewModel)
            }
            .navigationTitle("Live Prices")
        }
    }
}

//struct HomeView_Previews: PreviewProvider {
//    static var previews: some View {
//        HomeView()
//    }
//}
