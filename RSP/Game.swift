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
    var state: String {
            switch self {
            case .lose: return "Lose!"
            case .win: return "Win!"
            case .draw: return "Tie!"
            }
        }
}

struct Game{
    var user1 = User(choise: .scissors)
    var user2 = User(choise: .scissors)
//        var randomChoise = Int.random(in: 0..<2)
//        switch randomChoise{
//            case 0: return .rock
//            case 1: return .paper
//            case 2: return .scissors
//        default:
//            return .scissors
//        }
//    }())
   
    func beats() -> GameState {
        switch (user1.choise, user2.choise) {
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
//    func randomChoise() -> Choise{
//        let randomChoise = Int.random(in: 0..<2)
//        switch randomChoise{
//            case 0: return .rock
//            case 1: return .paper
//            case 2: return .scissors
//        default:
//            return .rock
//        }
//
//    }
    }
