//
//  TreasureStore.swift
//  LShkolnyk-CV
//
//  Created by Kollokvium on 23.11.2019.
//  Copyright © 2019 Administrator. All rights reserved.
//

import SwiftUI
import Combine

class TreasureStore: ObservableObject {
    
    var treasure: [Achievement] {
        didSet { didChange.send() }
    }
    
    init(treasure: [Achievement] = []) {
        self.treasure = treasure
        addTreasure()
    }
    
    var didChange = PassthroughSubject<Void, Never>()
    
    func addTreasure() {
        achievements.forEach { treasure.append($0) }
    }
}
