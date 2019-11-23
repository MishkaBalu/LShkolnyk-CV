//
//  TreasureDTO.swift
//  LShkolnyk-CV
//
//  Created by Kollokvium on 23.11.2019.
//  Copyright © 2019 Administrator. All rights reserved.
//

import SwiftUI
import Combine

struct Achievement: Identifiable, Hashable {
    var id = UUID()
    
    var nameIndex: String
    var description: String
    
    var imageName: String { return "currency-" + nameIndex }
}

let achievements: [Achievement] = [
    Achievement(nameIndex: "1", description: "currency-\(1)"),
    Achievement(nameIndex: "2", description: "currency-\(2)"),
    Achievement(nameIndex: "3", description: "currency-\(3)"),
    Achievement(nameIndex: "4", description: "currency-\(4)"),
    Achievement(nameIndex: "5", description: "currency-\(5)"),
    Achievement(nameIndex: "6", description: "currency-\(6)"),
    Achievement(nameIndex: "7", description: "currency-\(7)"),
    Achievement(nameIndex: "7", description: "currency-\(8)")
]
