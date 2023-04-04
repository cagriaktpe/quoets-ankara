//
//  QuoteModel.swift
//  Quoets-Ankara
//
//  Created by Samet Cagri Aktepe on 03/04/2023.
//

import Foundation

class QuoteModel: ObservableObject {
    @Published var quotes:[Quote]
    
    init() {
        // Set the quotes property
        self.quotes = DataService.getLocalData()
    }
}
