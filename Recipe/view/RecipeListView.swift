//
//  ContentView.swift
//  Recipe
//
//  Created by Taylor Gibson on 7/27/21.
//

import SwiftUI

struct RecipeListView: View {
    
    var model = RecipeModel()
    
    var body: some View {
        
        
        NavigationView {
            List(model.recipes) { r in
                NavigationLink(
                    destination: RecipeDetailView(recipes:r),
                    label: {
                        //MARK: row item
                        HStack(alignment: .center, spacing: 20.0) {
                            Image(r.image)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 50, height: 50, alignment: .center)
                                .clipped()
                                .cornerRadius(5)
                            Text(r.name)
                        }
                    })
                
            }
            .navigationBarTitle("All Recipes")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
