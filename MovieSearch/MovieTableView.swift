//
//  MovieTableView.swift
//  MovieSearch
//
//  Created by ac on 2/15/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import Foundation
import UIKit

class MovieTableView:UITableView, UITableViewDelegate, UITableViewDataSource {
    
    
   
    var movies: [Movie] = []
//    init() {
//        //super.init()
//        
//    }
    

//    override var numberOfSections: Int { return 1 }
    
//    override func numberOfRows(inSection section: Int) -> Int {
//        print("In MovieTableView:movies.count\(movies.count)")
//        return movies.count
//    }
    
//    override func cellForRow(at indexPath: IndexPath) -> UITableViewCell? {
//        let cell = MovieTableViewCell()
//        cell.title.text = movies[indexPath.row].title
//        cell.imdbId.text = movies[indexPath.row].imdbID
//        cell.year.text = movies[indexPath.row].year
//        cell.type.text = movies[indexPath.row].type
//        cell.poster.text = movies[indexPath.row].poster
//       
//        return cell
//    }
    
//    override func numberOfSections(in tableView: UITableView) -> Int {
//        
//        return 1
//    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return movies.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
             let cell = tableView.dequeueReusableCell(withIdentifier: "movieCell", for: indexPath) as! MovieTableViewCell
        
        //let cell = MovieTableViewCell()
        cell.title.text = movies[indexPath.row].title
        cell.imdbId.text = movies[indexPath.row].imdbID
        cell.year.text = movies[indexPath.row].year
        cell.type.text = movies[indexPath.row].type
        cell.poster.text = movies[indexPath.row].poster
        
        return cell
    }
 
    
    
}
