//
//  dataService.swift
//  Recipe
//
//  Created by Taylor Gibson on 7/27/21.
//

import Foundation

class DataService {
    
    static func getLocalData() -> [RecipeStructure] {
        
        // Parse llocal json file
        
        // Get a url path to the json file
        let pathString = Bundle.main.path(forResource: "recipes", ofType: "json")

        // Check if pathString is not nil, otherwise...
        guard pathString != nil else {
            return [RecipeStructure]()
        }
        // Create a url object
        let url = URL(fileURLWithPath: pathString!)
        
        do {
            // Create a data object

            let data = try Data(contentsOf: url)
            
            // Decode the data with a JSON decoder
            let decoder = JSONDecoder()
            
            do {
                let recipeData = try decoder.decode([RecipeStructure].self, from: data)
                
                // Add a unique IDs
                for r in recipeData {
                    r.id = UUID()
                }
                // Return the recipes
                return recipeData
            }
            catch {
                print(error)
            }
            
        }
        catch {
            print(error)
        }
        
        
        return [RecipeStructure]()
    }
    
}
