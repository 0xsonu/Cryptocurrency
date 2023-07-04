//
//  TopMoversItemView.swift
//  CryptoCurrency
//
//  Created by Sonu Kumar on 03/07/23.
//

import SwiftUI

struct TopMoversItemView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Image(systemName: "bitcoinsign.circle.fill")
                .resizable()
                .frame(width: 32, height: 32)
                .foregroundColor(.orange)
                .padding(.bottom, 8)
            
            HStack(spacing: 2){
                Text("BTC")
                    .font(.caption)
                    .fontWeight(.bold)
                
                Text("23,000.00")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            
            Text("+1.06%")
                .font(.title2)
                .foregroundColor(.green)
        }
        .frame(width: 140, height: 140)
        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color(.systemGray4), lineWidth: 2))
        
    }
}

//struct TopMoversItemView_Previews: PreviewProvider {
//    static var previews: some View {
//        TopMoversItemView()
//    }
//}
