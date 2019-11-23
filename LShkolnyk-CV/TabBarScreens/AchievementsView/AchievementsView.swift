//
//  AchievementsView.swift
//  LShkolnyk-CV
//
//  Created by Administrator on 21.11.2019.
//  Copyright © 2019 Administrator. All rights reserved.
//

import SwiftUI
import Combine

struct AchievementsView: View {
    
    @ObservedObject var treasureStore = TreasureStore()
    
    var body: some View {
        VStack {
            QGrid(treasureStore.treasure,
                  columns: 3,
                  vSpacing: 10,
                  hSpacing: 10, vPadding: 10, hPadding: 10) { treasure in
                    AchievementDetailsView(achievement: treasure)
            }
        }
    }
}

struct AchievementsView_Previews: PreviewProvider {
    static var previews: some View {
        AchievementsView()
    }
}
