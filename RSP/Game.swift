//
//  Game.swift
//  RSP
//
//  Created by Dinmukhamed on 02.02.2023.
//

import Foundation
 
enum Choise{
    case scissors
    case rock
    case paper
    var emoji: String {
            switch self {
            case .rock: return "🗿"
            case .paper: return "📃"
            case .scissors: return "✂"
            }
        }
}
struct User{
    var choise: Choise
}
enum GameState{
    case draw, win , lose
}
struct Game{
    var user1 = User(choise: .scissors)
    var user2 = User(choise: .rock)
    func beats(user1: Choise, user2: Choise) -> GameState {
        switch (user1, user2) {
        case (.rock, .rock):     return .draw
        case (.rock, .paper):    return .lose
        case (.rock, .scissors): return .win
            
        case (.paper, .rock):     return .win
        case (.paper, .paper):    return .draw
        case (.paper, .scissors): return .lose
            
        case (.scissors, .rock):     return .lose
        case (.scissors, .paper):    return .win
        case (.scissors, .scissors): return .draw
        }
    }
}
