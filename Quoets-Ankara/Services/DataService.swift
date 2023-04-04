//
//  DataService.swift
//  Quoets-Ankara
//
//  Created by Samet Cagri Aktepe on 03/04/2023.
//

import Foundation

class DataService {
    static func getLocalData() -> [Quote] {
        // Parse local JSON file
        
        // Get a url path to the JSON file
        let pathString = Bundle.main.path(forResource: "Data", ofType: "json")
        
        // Check if pathString is not nil, otherwise...
        guard pathString != nil else {
            return [Quote]()
        }
        
        // Create a URL object
        let url = URL(fileURLWithPath: pathString!)
        
        // Create a data object
        do {
            let data = try Data(contentsOf: url)
            
            // Decode the data with a JSON decoder
            let decoder = JSONDecoder()
            
            do {
                let quoteData = try decoder.decode([Quote].self, from: data)
                
                // Add the unique IDs
                for q in quoteData {
                    q.id = UUID()
                }
                
                // Return quotes
                return quoteData
            }
            catch {
                print(error)
            }
        }
        catch {
            print(error)
        }
        
        return [Quote]()
    }
}
