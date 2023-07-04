//
//  TopMoversView.swift
//  CryptoCurrency
//
//  Created by Sonu Kumar on 03/07/23.
//

import SwiftUI

struct TopMoversView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Top Currencies")
                .font(.headline)
            
            ScrollView(.horizontal, showsIndicators: false){
                HStack (spacing: 16){
                    ForEach(0 ..< 5, id: \.self){ _ in
                        TopMoversItemView()
                    }
                }
            }
        }
        .padding()
    }
}

//struct TopMoversView_Previews: PreviewProvider {
//    static var previews: some View {
//        TopMoversView()
//    }
//}
