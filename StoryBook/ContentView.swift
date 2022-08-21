//
//  ContentView.swift
//  StoryBook
//
//  Created by Yigit Ozdamar on 21.08.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            
            
            List{
                ForEach(myFavorites) { favorite in
                    Section {
                        ForEach(favorite.elements) { element in
                            NavigationLink(destination: DetailsView(chosenFavoriteElement: element)) {
                                Text(element.name)
                            }
                            
                        }
                    } header: {
                        Text(favorite.title)
                    }
                    
                }
            }
            .navigationTitle(Text("Story Book"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
