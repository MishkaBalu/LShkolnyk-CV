//
//  aaa.swift
//  LShkolnyk-CV
//
//  Created by Kollokvium on 23.11.2019.
//  Copyright © 2019 Administrator. All rights reserved.
//

import SwiftUI
import Combine

struct AchievementDetailsView: View {
    let achievement: Achievement
    
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            Image(achievement.imageName)
                .resizable()
                .cornerRadius(10)
                .frame(width: 75, height: 75, alignment: .center)
                .scaledToFit()
            Text(achievement.description)
                .lineLimit(0)
        }
    }
}

struct AchievementDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        AchievementDetailsView(achievement: Achievement(nameIndex: "1", description: "Some"))
    }
}
