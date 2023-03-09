//
//  CareAndProtect.swift
//  ApolloDesign
//
//  Created by Binal Ahiya on 2023-03-07.
//

import SwiftUI

struct CareandProtectCell : View {
    var index: Int
    var title: String
    var description: String
    var price: String
    var imageName: String
    var bikeImage: String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 16)
                .stroke(Color.gray, lineWidth: 1)
                .frame(width: 242, height: 329)
            if index == 0 {
                Image(imageName)
                    .padding(.leading, 168)
                    .padding(.bottom, 220)
            }
            else {
                Image(imageName)
                    .padding(.leading, 40)
                    .padding(.bottom, 15)
                Image(bikeImage)
                    .padding(.leading, 0)
                    .padding(.bottom, 90)
            }
            VStack(alignment: .leading) {
                Image(ImageAsset.apLogo)
                    .frame(width: 74, height: 39)
                    .padding(.leading, 20)
                    .padding(.top, 24)
                Text(title)
                    .fixedSize(horizontal: false, vertical: true)
                    .font(.custom(Constants.font_NimbusSansExtdBold, size: Constants.fontSize5))
                    .frame(minWidth: 129, maxWidth: 159, minHeight: 76, maxHeight: 114)
                    .foregroundColor(.white)
                    .padding(.top, 57)
                Divider()
                Text(description)
                    .font(.custom(Constants.font_GibsonMedium, size: Constants.fontSize3))
                    .frame(width: 210, height: 24, alignment: .leading)
                    .foregroundColor(.white)
                    .padding(.top, 8)
                Text(price)
                    .font(.custom(Constants.font_GibsonRegular, size: Constants.fontSize2))
                    .foregroundColor(Color(hex: Constants.greyColor))
                    .frame(height: 16)
                    .padding(.bottom, 18)
            }.padding(10)
            
        }
        
    }
}
