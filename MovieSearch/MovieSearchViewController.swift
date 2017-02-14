//
//  MovieSearchViewController.swift
//  MovieSearch
//
//  Created by James Campagno on 2/14/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import UIKit

class MovieSearchViewController: UIViewController {
    
    let movieAPI = MovieAPI()
    var movieSearchDictionary: [String: Any] = [:]
    var movieDictionary: [[String:String]] = []
    var movieArr:[String:String] = [:]
    var movieArrDict:[Movie] = []
    //var movieArray: [Movie] = []
    var movie:Movie?
    
    @IBOutlet weak var searchTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        searchTextField.delegate = self
    }
    
    func searchFilm(with title: String) {// return the dictionary with all of the movies titled "titanic"
        
       // print(title)
        
       //print(movieAPI.searchFilm(title: title))
        
        movieSearchDictionary = movieAPI.searchFilm(title: title)!
        movieDictionary = movieSearchDictionary["Search"] as! [[String : String]]
        //print(movieDictionary)
        
        
        for (idx,dictionary) in movieDictionary.enumerated(){
            print("dict:\(idx):\(dictionary)")
            movieArr = dictionary
            print("movie:\(movieArr)")
            for key in movieArr {
                print("key:\(key)")
            }
                //movieArrDict = (movieArr as? [Movie])!
            //print("tittle:\(movieArrDict[0].title)")
            //var newMovie: Movie
        
            //for (key,value) in dictionary{
            
            //}
            
        }//for
       
    }
    


}

// MARK: - UITextFieldDelegate
extension MovieSearchViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        let title = textField.text ?? "No Text"
        searchFilm(with: title)
        textField.resignFirstResponder()
        return true
    }
    
}
