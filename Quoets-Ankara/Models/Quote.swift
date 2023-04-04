//
//  Quote.swift
//  Quoets-Ankara
//
//  Created by Samet Cagri Aktepe on 03/04/2023.
//

import Foundation

class Quote: Identifiable, Decodable {
    var id:UUID?
    var name:String
    var quote:String
    var year:Int
    var description:[String]
    var image:String
}
