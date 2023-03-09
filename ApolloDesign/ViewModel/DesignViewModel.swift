//
//  DesignViewModel.swift
//  ApolloDesign
//
//  Created by Binal Ahiya on 2023-03-07.
//

import Foundation
import UIKit

class DesignViewModel: ObservableObject {
    @Published var arr_CareProtect: [DetailItems] = []
    @Published var arr_Accessories: [DetailItems] = []
    @Published var arr_Upgrades: [DetailItems] = []
    @Published var arr_HeaderItems: [HeaderItems] = []


    init() {
        // Initialize array with data

        arr_CareProtect = [
            DetailItems(id: 0, title: "THEFT AND LOSS", description: "Apollo Care Theft and Loss", price: "$129 USD or $6.99/mo.", imageName: ImageAsset.eclipseFirst, scooterImage: ""),
            DetailItems(id: 1,title: "APOLLO CARE", description: "Apollo Care", price: "$129 USD or $6.99/mo.", imageName: ImageAsset.eclipseSecond, scooterImage: ImageAsset.bikeImage )
        ]
        arr_Accessories = [
            DetailItems(id: 0, title: "Apollo Bag", description: "Some interesting description here", price: "$19.99 USD",imageName: "", scooterImage: "")
        ]
        arr_Upgrades = [
            DetailItems(id: 0, title: "Phantom V3 Kit", description: "At magnum periculum adiit in oculis quidem exercitus quid ex eo delectu rerum.", price: "", imageName: "", scooterImage: "")
        ]
        arr_HeaderItems = [
            HeaderItems(id: 0, title: "Apollo Care and Protect", description: "Protect your new scooter"),
            HeaderItems(id: 1, title: "Accessories", description: "Buy new great stuff for your scooter"),
            HeaderItems(id: 2, title: "Upgrades", description: "Hardware & Software Updates")
        ]
    }
}
