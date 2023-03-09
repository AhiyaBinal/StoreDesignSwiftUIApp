//
//  ContentView.swift
//  ApolloDesign
//
//  Created by Binal Ahiya on 2023-03-07.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ShowTabItems()
        }
        .toolbarColorScheme(.light, for: .tabBar)
    }
}
struct ShowTabItems: View
{
    @ObservedObject var viewModel = DesignViewModel()
    var body: some View {
        ForEach(TabEntity.allCases, id:\.self) { entity in
            Store(title: entity.entityName,
                  arr_CareProtect: viewModel.arr_CareProtect,
                  arr_Accessories: viewModel.arr_Accessories,
                  arr_Upgrades: viewModel.arr_Upgrades,
                  arr_HeaderItems: viewModel.arr_HeaderItems)
                .tabItem {
                    Image(entity.entityName)
                    Text(entity.entityName)
                }
        }
    }
}

