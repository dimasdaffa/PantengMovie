//
//  Title.swift
//  PantengMovie
//
//  Created by DIMAS DAFFA ERNANDA on 08/03/26.
//

import Foundation

struct APIObject: Decodable {
    var results: [Title] = []
}

struct Title: Decodable, Identifiable {
    var id: Int?
    var title: String?
    var name: String?
    var overview: String?
    var posterPath: String?
    
    static var previewTitles = [
        Title(id: 1,title: "Batman: The Dark Knight",name: "Batman" ,overview: "When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.",
              posterPath: Constants.testTitleURL),
        Title(id: 2,title: "Spider-Man: No Way Home",name: "Spider-Man" ,overview: "With Spider-Man's identity now revealed, Peter asks Doctor Strange for help. When a spell goes wrong, dangerous foes from other worlds start to appear, forcing Peter to discover what it truly means to be Spider-Man.",
              posterPath: Constants.testTitleURL2),
        Title(id: 3,title: "Avengers: Endgame",name: "Avengers" ,overview: "After the devastating events of Infinity War, the universe is in ruins. With the help of remaining allies, the Avengers assemble once more to reverse Thanos' actions and restore balance to the universe.",
              posterPath: Constants.testTitleURL3)
    ]
}
