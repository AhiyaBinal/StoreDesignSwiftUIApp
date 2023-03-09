//
//  Store.swift
//  ApolloDesign
//
//  Created by Binal Ahiya on 2023-03-07.
//

import SwiftUI

struct Store: View {
    var title: String
    var arr_CareProtect: [DetailItems]
    var arr_Accessories: [DetailItems]
    var arr_Upgrades: [DetailItems]
    var arr_HeaderItems: [HeaderItems]
    
    
    init(title: String, arr_CareProtect: [DetailItems], arr_Accessories: [DetailItems], arr_Upgrades: [DetailItems], arr_HeaderItems: [HeaderItems]) {
        //To apply background color to TabView and NavigationView
        self.title = title
        self.arr_CareProtect = arr_CareProtect
        self.arr_Accessories = arr_Accessories
        self.arr_Upgrades = arr_Upgrades
        self.arr_HeaderItems = arr_HeaderItems
        
        let navigationBarAppearance = UINavigationBarAppearance()
        navigationBarAppearance.configureWithOpaqueBackground()
        navigationBarAppearance.backgroundColor = UIColor.black
        UINavigationBar.appearance().standardAppearance = navigationBarAppearance
        UINavigationBar.appearance().compactAppearance = navigationBarAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = navigationBarAppearance
                    
        let tabBarApperance = UITabBarAppearance()
        tabBarApperance.configureWithOpaqueBackground()
        tabBarApperance.backgroundColor = UIColor.black
        UITabBar.appearance().scrollEdgeAppearance = tabBarApperance
        UITabBar.appearance().standardAppearance = tabBarApperance
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.black.edgesIgnoringSafeArea(.all)

                ScrollView (.vertical, showsIndicators: true) {
                    HeaderDetails(headerTitle: arr_HeaderItems[0].title, headerDescription: arr_HeaderItems[0].description)
                    ScrollView (.horizontal, showsIndicators: false) {
                        HStack(spacing: Constants.headerSpacing) {
                            ForEach(arr_CareProtect, id: \.id) { protect in
                                CareandProtectCell(index: protect.id, title: protect.title, description: protect.description, price: protect.price, imageName: protect.imageName, bikeImage: protect.scooterImage)
                            }
                        }
                    }
                    HeaderDetails(headerTitle: arr_HeaderItems[1].title, headerDescription: arr_HeaderItems[1].description)
                    ScrollView (.horizontal, showsIndicators: false) {
                        HStack(spacing: Constants.headerSpacing) {
                            ForEach(arr_Accessories, id: \.id) { protect in
                                AccessoriesCell(title: protect.title, description: protect.description, price: protect.price)
                            }
                        }
                    }
                    HeaderDetails(headerTitle: arr_HeaderItems[2].title, headerDescription: arr_HeaderItems[2].description)
                    ScrollView (.horizontal, showsIndicators: false) {
                        HStack(spacing: Constants.headerSpacing) {
                            ForEach(arr_Upgrades, id: \.id) { protect in
                                Upgrades(title: protect.title, description: protect.description)
                            }
                        }
                    }
                }
                .navigationBarItems(
                    leading:
                        Text(title)
                        .font(.custom(Constants.font_NimbusSansExtdBold, size: Constants.fontSize4))
                        .fontWeight(.bold)
                        .foregroundColor(.white),
                    trailing:
                        Button(action: {
                        }) {
                            Image(ImageAsset.avatar)
                                .frame(width: Constants.avatarSize, height: Constants.avatarSize)
                        }
                )
            }
        }
    }

}

struct HeaderDetails: View {
    var headerTitle: String
    var headerDescription: String
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(headerTitle)
                    .font(.custom(Constants.font_GibsonMedium, size: Constants.headerTitleSize))
                    .foregroundColor(.white)
                Text(headerDescription)
                    .font(.custom(Constants.font_GibsonRegular, size: Constants.headerDescriptionSize))
                    .foregroundColor(.white)

            }
            .padding()
            Spacer()
            Button {
                
            } label: {
                Text(Constants.seeAll)
                    .font(.custom(Constants.font_GibsonRegular, size: Constants.fontSize3))
            }
            .padding()
        }
    }
}

