//
//  DesignModel.swift
//  ApolloDesign
//
//  Created by Binal Ahiya on 2023-03-07.
//

import Foundation

enum TabEntity: String, CaseIterable {
    case Home
    case RideList
    case Map
    case Store
    case Settings
    
    var entityName: String {
        switch self {
        case .Home : return Constants.home
        case .RideList: return Constants.rideList
        case .Map: return Constants.map
        case .Store: return Constants.store
        case .Settings: return Constants.settings
        }
    }
}
struct Constants {
    //Tab Names
    static let home = "Home"
    static let rideList = "Ride List"
    static let map = "Map"
    static let store = "Store"
    static let settings = "Settings"
    static let seeAll = "See all"
    static let buy = "Buy"
    
    //Fonts
    static let font_NimbusSansExtd = "NimbusSanD-ReguExte"
    static let font_NimbusSansExtdBold = "NimbusSanD-BoldExte"
    static let font_GibsonRegular = "Gibson-Regular"
    static let font_GibsonBold = "Gibson-Bold"
    static let font_Gibson = "Gibson"
    static let font_GibsonMedium = "FONTSPRINGDEMO-GibsonMediumRegular"
    static let font_GibsonBook = "FONTSPRINGDEMO-GibsonBookRegular"    
    static let font_SFProDisplay = "SFProDisplay-Bold"

    //Font Size
    static let fontSize1 = 12.0
    static let fontSize2 = 14.0
    static let fontSize3 = 16.0
    static let fontSize4 = 24.0
    static let fontSize5 = 32.0

    // Avatar Size
    static let avatarSize = 40.0

    //Header Fonts and Spacing
    static let headerTitleSize = 20.0
    static let headerDescriptionSize = 17.0
    static let headerSpacing = 16.0
    
    //Hex Colors
    static let greyColor = "6D6D6D"
    static let orangeColor = "F2591E"

}
struct ImageAsset {
    //Image Names
    static let home = "Home"
    static let rideList = "Ride List"
    static let map = "Map"
    static let store = "Store"
    static let settings = "Settings"
    static let avatar = "Avatar"
    static let upgrades = "Upgrades"
    static let accessories = "Accessories"
    static let apLogo = "APLogo"
    static let eclipseFirst = "Shape1"
    static let eclipseSecond = "Shape2"
    static let bikeImage = "Bike"

}
struct DetailItems: Identifiable {
    var id: Int
    var title: String
    var description: String
    var price: String
    var imageName: String
    var scooterImage: String
}
struct HeaderItems: Identifiable {
    var id: Int
    var title: String
    var description: String
}
