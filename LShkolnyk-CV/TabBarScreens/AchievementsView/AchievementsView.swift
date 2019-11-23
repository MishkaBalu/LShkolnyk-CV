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
        List(treasureStore.treasure) { some in
            AchievementDetailsView(achievement: some)
        }
    }
}

struct AchievementsView_Previews: PreviewProvider {
    static var previews: some View {
        AchievementsView()
    }
}
