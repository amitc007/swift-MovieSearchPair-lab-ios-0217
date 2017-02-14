//
//  Movie.swift
//  MovieSearch
//
//  Created by ac on 2/14/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import Foundation

class Movie{
    let poster: String = ""
    let title: String = ""
    let type: String = ""
    let year: String = ""
    let imdbID: String = ""
    
    
//    init(poster: String, title: String, type: String, year: String, imdbID: String){
//        self.poster = poster
//        self.title = title
//        self.type = type
//        self.year = year
//        self.imdbID = imdbID

    
    
    enum MovieInfo: String{
    case poster = "Poster"
    case title = "Title"
    case type = "Type"
    case year = "Year"
    case imdbID = "imdbID"
    }
    
  /*  func updateProperty(property: String, passedValue: String){
        switch propery{
            case "Poster":
            self.poster = passedValue
        default:
            self.poster = "Something else"
        }
        
        
        
    } */
    
    
}
