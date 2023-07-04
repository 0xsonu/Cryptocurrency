//
//  Double.swift
//  CryptoCurrency
//
//  Created by Sonu Kumar on 04/07/23.
//

import Foundation

extension Double {
    private var currencyFormatter : NumberFormatter {
        let formatter = NumberFormatter()
        
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .currency
        formatter.currencyCode = "inr"
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 3
        return formatter
    }
    
    private var numberFormatter : NumberFormatter {
        let formatter = NumberFormatter()
        
        formatter.numberStyle = .decimal
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        return formatter
    }
    
    
    func toCurrency() -> String {
        return currencyFormatter.string(for: self) ?? "₹0.00"
    }
    
    func toPercentString() -> String {
        return (numberFormatter.string(for: self) ?? "0.00") + "%"
    }
}
