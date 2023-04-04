//
//  QuoteDetailView.swift
//  Quoets-Ankara
//
//  Created by Samet Cagri Aktepe on 04/04/2023.
//

import SwiftUI

struct QuoteDetailView: View {
    var quote:Quote
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20.0) {
                // MARK: Image
                Image(quote.image)
                    .resizable()
                    .scaledToFill()
                
                // MARK: Quote
                Text(quote.quote)
                    .font(.headline)
                    .padding(.top)
                     
                // MARK: Name and Year
                Text(quote.name + " - " + String(quote.year))
                    .font(.subheadline)
                    .padding(.top)
                
                // MARK: Description
                VStack(alignment: .leading) {
                    ForEach(quote.description, id: \.self) { element in
                        Text(element)
                            .font(.body)
                            .padding(.bottom)
                    }
                }
            }
            .padding()
        }
    }
}

struct QuoteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let model = QuoteModel()
        QuoteDetailView(quote: model.quotes[0])
    }
}
