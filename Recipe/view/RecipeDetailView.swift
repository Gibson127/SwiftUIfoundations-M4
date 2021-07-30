//
//  RecipeDetailView.swift
//  Recipe
//
//  Created by Taylor Gibson on 7/28/21.
//

import SwiftUI

struct RecipeDetailView: View {
    
    var recipes:RecipeStructure

    
    var body: some View {
        ScrollView {
            
            VStack(alignment:.leading){
                
                // MARK: Recipe Image
                Image(recipes.image)
                    .resizable()
                    .scaledToFill()
                
                //MARK: Ingredients
                VStack (alignment: .leading){
                    
                    Text("Ingredients")
                        .font(.headline)
                        .padding([.bottom, .top], 7)
                    
                    ForEach (recipes.ingredients) { item in
                        Text("• " + item.name)
                        
                    }
                }
                .padding(.horizontal)

                
                Divider()
                
                //MARK: Directions
                VStack(alignment: .leading) {
                    
                    Text("Directions")
                        .font(.headline)
                        .padding([.bottom, .top], 7)
                    
                    ForEach(0..<recipes.directions.count, id: \.self) { index in
                        
                        Text(String(index+1) + ". " + recipes.directions[index])
                            .padding(.bottom, 7)
                    }
                }
                .padding(.horizontal)
            }
        }
        .navigationBarTitle(recipes.name)
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        
        let model = RecipeModel()
        
        RecipeDetailView(recipes: model.recipes[0])
        
    }
}
