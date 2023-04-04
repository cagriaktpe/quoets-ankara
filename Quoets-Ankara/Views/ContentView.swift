//
//  ContentView.swift
//  Quoets-Ankara
//
//  Created by Samet Cagri Aktepe on 03/04/2023.
//

import SwiftUI

struct ContentView: View {
    var model = QuoteModel()
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 20.0) {
                    ForEach(model.quotes) { quote in
                        NavigationLink {
                            QuoteDetailView(quote: quote)
                        } label: {
                            CardView(quote: quote)
                        }
                    }
                }
            }.navigationTitle("Quotes Ankara")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
