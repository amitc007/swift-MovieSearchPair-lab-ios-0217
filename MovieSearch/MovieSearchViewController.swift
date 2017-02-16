//
//  MovieSearchViewController.swift
//  MovieSearch
//
//  Created by James Campagno on 2/14/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import UIKit

class MovieSearchViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    
    let movieAPI = MovieAPI()
    var movieSearchDictionary: [String: Any] = [:]
    var movieDictionary: [[String:String]] = []
    var movieDict:[String:String] = [:]
    var movies:[Movie] = []
    //var movieArray: [Movie] = []
    var movie:Movie?
    //var movieTableView = UITableView()
    //var MovieTable = MovieTableView()
    
    @IBOutlet weak var movieTableView: UITableView!
    @IBOutlet weak var searchTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        searchTextField.delegate = self
        movieTableView.delegate = self
        movieTableView.dataSource = self
        
    }
    
    func searchFilm(with title: String) {// return the dictionary with all of the movies titled "titanic"
        
       // print(title)
        
       //print(movieAPI.searchFilm(title: title))
        
        movieSearchDictionary = movieAPI.searchFilm(title: title)!
        movieDictionary = movieSearchDictionary["Search"] as! [[String : String]]
        //movieDict2 = movieDictionary[0]
        //print(movieDictionary)
        //print("movieDict:\(movieDict)")
        
        for (idx,dictionary) in movieDictionary.enumerated(){
            //print("dict:\(idx):\(dictionary)")
            //movie = dictionary as Movie
            movie = Movie(dictionary: dictionary)
            print("movie:\(movie?.title ?? "No Title")")
            movies.append(movie!)
        }//for
       
        //MovieTable.movies = self.movies
        print("MovieSearchViewController:self.movies:\(self.movies.count)")
            //MovieTable.movies:\(MovieTable.movies.count)")
        movieTableView.reloadData()
    }
    
    
    //TableView
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("In numberOfRowsInSection")
        return movies.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "movieCell", for: indexPath) as! MovieTableViewCell
        print("In cellForRowAt")
        
        //let cell = MovieTableViewCell()
        cell.title.text = movies[indexPath.row].title
        cell.imdbId.text = movies[indexPath.row].imdbID
        cell.year.text = movies[indexPath.row].year
        cell.type.text = movies[indexPath.row].type
        cell.poster.text = movies[indexPath.row].poster
        
        return cell
    }
    
    

} //class



// MARK: - UITextFieldDelegate
extension MovieSearchViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        let title = textField.text ?? "No Text"
        searchFilm(with: title)
        textField.resignFirstResponder()
        return true
    }
    
}
