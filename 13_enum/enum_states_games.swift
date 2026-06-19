//
//  enum_states_games.swift
//  Swift 2025
//
//  Created by Jose Garcia on 19/06/26.
//
/*
 We have a game that only has three states
 STARTED
 PLAYING
 GAMEOVER
 The states can only move in the direction STARTED->PLAYING->GAMEOVER, so a game has a function to
 move the game from one state to another.
 Create the game enum and a function that is used to move the game through the states and print
 the result.

 */

enum GameState {
    case started
    case playing
    case gameOver
}

func moveGame(from: GameState, to: GameState) {
    if from == .started, to == .playing {
        print("Game started")
    } else if from == .playing, to == .gameOver {
        print("Game over")
    } else {
        print("Invalid move")
    }
}

func moveGameApp() {
    moveGame(from: .started, to: .playing)
    moveGame(from: .playing, to: .gameOver)
    moveGame(from: .started, to: .gameOver)
}
