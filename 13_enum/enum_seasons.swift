//
//  enum_seasons.swift
//  Swift 2025
//
//  Created by Jose Garcia on 18/06/26.
//

enum Season: CaseIterable {
    case Spring, Summer, Autumn, Winter
}

func showSeason(s: Season) {
    print("At the moment it's \(s)")
}

func showSeasonApp() {
    let s1 = Season.Spring
    showSeason(s: s1)

    showSeason(s: .Winter)

    if let randomSeason = Season.allCases.randomElement() {
        showSeason(s: randomSeason)

        switch randomSeason {
        case .Spring:
            print("It's Spring")
        case .Summer:
            print("It's Summer")
        case .Autumn:
            print("It's Autumn")
        case .Winter:
            print("It's Winter")
        }
    }
    imprimirLinea()
    for season in Season.allCases {
        showSeason(s: season)
    }
}
