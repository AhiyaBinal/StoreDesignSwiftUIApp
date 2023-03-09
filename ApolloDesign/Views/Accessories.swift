//
//  Accessories.swift
//  ApolloDesign
//
//  Created by Binal Ahiya on 2023-03-07.
//

import SwiftUI

struct AccessoriesCell : View {
    var title: String
    var description: String
    var price: String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 16)
                .stroke(Color.gray, lineWidth: 1)
                .frame(width: 242, height: 329)
        VStack {
            Image(ImageAsset.accessories)
                .frame(width: 205, height: 216)
                .padding(.top, 26)
                .padding(.leading, 37)
            Divider()
            HStack(){
                VStack(alignment: .leading){
                    Text(title)
                        .font(.custom(Constants.font_GibsonMedium, size: Constants.fontSize3))
                        .frame(width: 79, height: 24)
                        .foregroundColor(.white)
                        .padding(.top, 8)
                    Text(description)
                        .font(.custom(Constants.font_GibsonBook, size: Constants.fontSize1))
                        .frame(width: 137, height: 32, alignment: .leading)
                        .foregroundColor(.white)
                        .padding(.bottom, 18)

                }
                VStack{
                    BuyButtonView()
                    Text(price)
                        .font(.custom(Constants.font_GibsonRegular, size: Constants.fontSize1))
                        .frame(height: 20)
                        .foregroundColor(Color(hex: Constants.greyColor))
                        .padding(.bottom, 21.5)

                }
            }
            
        }
    }
}
}
