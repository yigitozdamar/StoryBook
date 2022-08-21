//
//  FavoriteModel.swift
//  StoryBook
//
//  Created by Yigit Ozdamar on 21.08.2022.
//

import Foundation

struct FavoriteModel : Identifiable {
    var id = UUID()
    
    var title : String
    var elements : [FavoriteElements]
}

struct FavoriteElements : Identifiable {
    var id = UUID()
    var name : String
    var imageName : String
    var description : String
}

//Bands

let metallica = FavoriteElements(name: "Metallica", imageName: "metallica", description: "Number 1 Music")
let megadeth = FavoriteElements(name: "Megadeth", imageName: "megadeth", description: "Number 2 Music")
let ironMaiden = FavoriteElements(name: "Iron Maiden", imageName: "ironmaiden", description: "Number 3 Music")

let favoriteBands = FavoriteModel(title: "Favorite Bands", elements: [metallica,megadeth,ironMaiden])

//Movies

let pulpfiction = FavoriteElements(name: "Pulpfiction", imageName: "pulpfiction", description: "Number 1 Movie")
let killbill = FavoriteElements(name: "Killbill", imageName: "killbill", description: "Number 2 Movie")
let thedarknight = FavoriteElements(name: "The Dark Night", imageName: "thedarknight", description: "Number 3 Movie")

let favoriteMovies = FavoriteModel(title: "Favorite Movies", elements: [pulpfiction,killbill,thedarknight])

let myFavorites = [favoriteBands,favoriteMovies]
