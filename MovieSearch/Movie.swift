//
//  Movie.swift
//  MovieSearch
//
//  Created by ac on 2/14/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import Foundation


class Movie{
    
    
    var title: String = ""
    var year: String = ""
    var poster: String = ""
    var type: String = ""
    var imdbID: String = ""
    
    
    /*init(poster: String, title: String, type: String, year: String, imdbID: String){
        self.poster = poster
        self.title = title
        self.type = type
        self.year = year
        self.imdbID = imdbID

    }*/
    
    init(dictionary:[String:String]) {
        for (key,val) in dictionary {
            switch key {
                case "Title": self.title = val
                case "Year": self.year = val
                case "imdbID": self.imdbID = val
                case "Type": self.type = val
                case "Poster": self.poster = val
                default: break
            }
        } //for
    }
    
    
}
