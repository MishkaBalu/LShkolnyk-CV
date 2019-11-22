//
//  ContentView.swift
//  LShkolnyk-CV
//
//  Created by Administrator on 21.11.2019.
//  Copyright © 2019 Administrator. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    init() {
        UITabBar.appearance().backgroundColor = UIColor.white
    }
    
    var body: some View {
        ZStack {
            Color(red: 75/255, green: 76/255, blue: 76/255).frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center).edgesIgnoringSafeArea(.top)
            TabView {
                HomeView().tabItem({
                    Image(Constants.TabBarImageName.tabBar0)
                    Text(Constants.TabBarText.tabBar0)
                    }).tag(0)
                ExperienceView().tabItem({
                    Image(Constants.TabBarImageName.tabBar1)
                    Text(Constants.TabBarText.tabBar1)
                }).tag(1)
                EducationView().tabItem({
                    Image(Constants.TabBarImageName.tabBar2)
                    Text(Constants.TabBarText.tabBar2)
                }).tag(2)
                AchievementsView().tabItem({
                    Image(Constants.TabBarImageName.tabBar3)
                    Text(Constants.TabBarText.tabBar3)
                }).tag(3)
                PortfolioView().tabItem({
                    Image(Constants.TabBarImageName.tabBar4).accentColor(.white)
                    Text(Constants.TabBarText.tabBar4)
                }).tag(4)
            }
            .accentColor(Color.blue)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
