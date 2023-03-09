//
//  Upgrades.swift
//  ApolloDesign
//
//  Created by Binal Ahiya on 2023-03-07.
//

import SwiftUI

struct Upgrades : View {
    var title: String
    var description: String
    var viewHeight: CGFloat = 95
    var viewWidth: CGFloat = 340

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 16)
                .stroke(Color.gray, lineWidth: 1)
                .frame(width: 343, height: 400)
            ZStack(alignment: .bottom) {
            Image(ImageAsset.upgrades)
                .frame(width: 343, height: 400)
                .clipped()
                .padding(.top, 15)
            Divider()
            HStack {
                VStack{
                    Text(title)
                        .font(.custom(Constants.font_GibsonMedium, size: Constants.fontSize4))
                        .frame(width: 217,height: 24, alignment: .leading)
                        .foregroundColor(.white)
                    Text(description)
                        .font(.custom(Constants.font_GibsonBook, size: Constants.fontSize1))
                        .frame(width: 210, alignment: .leading)
                        .foregroundColor(.white)
                }
                BuyButtonView()
            }
            .frame(width: viewWidth ,height: viewHeight)
            .background(
                //To project the unit point into the rendered view’s coordinate space, multiply each component of the unit point with the corresponding component of the view’s size
                LinearGradient(gradient: Gradient(colors: [Color(red: 0, green: 0, blue: 0, opacity: 0.84),
                                                           Color(red: 0, green: 0, blue: 0, opacity: 0.01)]), startPoint: UnitPoint(x: 0.25 * viewWidth , y: 0.5 * viewHeight), endPoint: UnitPoint(x: 0.75 * viewWidth , y: 0.5 * viewHeight))
                    .blur(radius: 22)
                    )
        }
    }
}
}
struct BuyButtonView: View {
    var body: some View {
        Button(action: {
            // Add your action here
        }) {
            Text(Constants.buy)
                .font(.custom(Constants.font_SFProDisplay, size: Constants.fontSize2))
                .foregroundColor(.white)
                .frame(width: 61, height: 29)
                .background(Color(hex: Constants.orangeColor))
                .cornerRadius(32)
        }
    }
}
