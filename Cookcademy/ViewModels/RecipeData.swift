//
//  RecipeData.swift
//  Cookcademy
//
//  Created by Andrew Tyree on 9/18/23.
//

import Foundation

class RecipeData: ObservableObject {
    @Published var recipes = Recipe.testRecipes
}
