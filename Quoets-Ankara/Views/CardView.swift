//
//  CardView.swift
//  Quoets-Ankara
//
//  Created by Samet Cagri Aktepe on 04/04/2023.
//

import SwiftUI

struct CardView: View {
    var quote:Quote
    
    var body: some View {
        ZStack {
            // MARK: Image
            Image(quote.image)
                .resizable()
                .scaledToFill()
                .cornerRadius(15)
            
            // MARK: Text
            VStack(spacing: 10.0) {
                // MARK: Quote
                Text(quote.quote)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                // MARK: Author
                Text(String(quote.year) + " - " + quote.name)
            }
            .padding([.top, .leading], 20.0)
            .shadow(color: .black, radius: 10, x: 2, y: 2)
            
        }
        .padding(.horizontal)
        .foregroundColor(.white)
        .frame(width: .none, height: 450, alignment: .center)
        .cornerRadius(15)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        let model = QuoteModel()
        CardView(quote: model.quotes[0])
    }
}
