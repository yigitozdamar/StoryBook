//
//  DetailsView.swift
//  StoryBook
//
//  Created by Yigit Ozdamar on 21.08.2022.
//

import SwiftUI

struct DetailsView: View {
    
    var chosenFavoriteElement : FavoriteElements
    
    var body: some View {
        VStack{
            
            Image(chosenFavoriteElement.imageName).resizable().aspectRatio(contentMode: .fit).padding().frame(width: UIScreen.main.bounds.width * 0.8, height: UIScreen.main.bounds.height * 0.5, alignment: .center)
            Text(chosenFavoriteElement.name).fontWeight(.bold).font(.largeTitle)
            Text(chosenFavoriteElement.description).font(.body)
            
        }
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(chosenFavoriteElement: killbill)
    }
}
