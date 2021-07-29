//
//  model.swift
//  Recipe
//
//  Created by Taylor Gibson on 7/27/21.
//

import Foundation

class RecipeStructure: Identifiable, Decodable {
    
    var id:UUID?
    var name:String
    var featured:Bool
    var image:String
    var description:String
    var prepTime:String
    var cookTime:String
    var totalTime:String
    var servings:Int
    var ingredients:[String]
    var directions:[String]
}
