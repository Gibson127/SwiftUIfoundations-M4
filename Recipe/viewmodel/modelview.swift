//
//  modelview.swift
//  Recipe
//
//  Created by Taylor Gibson on 7/27/21.
//

import Foundation

class RecipeModel: ObservableObject {
    
    @Published var recipes = [RecipeStructure]()
 
    init() {
        
        self.recipes = DataService.getLocalData()
    }
}
