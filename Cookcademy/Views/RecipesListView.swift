//
//  ContentView.swift
//  Cookcademy
//
//  Created by Andrew Tyree on 9/16/23.
//

import SwiftUI

struct RecipesListView: View {
    
    @StateObject var recipeData = RecipeData() // property creates an instance of our view model.
    
    var body: some View {
        List {
            ForEach(recipes) { recipe in
                NavigationLink(recipe.mainInformation.name,
                               destination: RecipeDetailView(recipe: recipe))
            }
        }
        .navigationTitle(navigationTitle)
    }
}

extension RecipesListView {
    var recipes: [Recipe] {
        recipeData.recipes
    }
    
    var navigationTitle: String {
        "All Recipes"
    }
}

struct RecipesListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            RecipesListView()
        }
    }
}
