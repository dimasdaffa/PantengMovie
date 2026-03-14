//
//  Constants.swift
//  PantengMovie
//
//  Created by DIMAS DAFFA ERNANDA on 07/03/26.
//

import Foundation
import SwiftUI

struct Constants {
    static let homeString = "Home"
    static let upcomingString = "Upcoming"
    static let searchString = "Search"
    static let downloadString = "Download"
    static let playString = "Play"
    static let trendingMovieString = "Trending Movies"
    static let trendingTVString = "Trending TV"
    static let topRatedMovieString = "Top Rated Movies"
    static let topRatedTVString = "Top Rated TV"   
    
    static let homeIconString = "house"
    static let upcomingIconString = "play.circle"
    static let searchIconString = "magnifyingglass"
    static let downloadIconString = "arrow.down.to.line"
    
    static let testTitleURL = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8qtCT7IlW9fmgySlBrDPiGl3iSC5zxM1VlA&s"
    static let testTitleURL2 = "https://nos.jkt-1.neo.id/media.cinema21.co.id/movie-images/25F1XX.jpg"
    static let testTitleURL3 = "https://upload.wikimedia.org/wikipedia/id/9/98/Our_Movie_poster.png"
    
    static let posterURLStart = "https://image.tmdb.org/t/p/w500"
    
    static func addPosterPath(to titles: inout[Title]) {
        for index in titles.indices {
            if let path = titles[index].posterPath {
                titles[index].posterPath = Constants.posterURLStart + path
            }
        }
    }
}

extension Text {
    func ghostButton() -> some View {
        self
            .frame(width: 100, height: 50)
            .foregroundStyle(.buttonText)
            .bold()
            .background {
                RoundedRectangle(cornerRadius: 20,style: .continuous)
                    .stroke(.buttonBorder,lineWidth: 5)
            }
    }
} 
 
