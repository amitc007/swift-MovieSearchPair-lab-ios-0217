//
//  MovieTableViewCell.swift
//  MovieSearch
//
//  Created by ac on 2/14/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var posterLabel: UILabel!
    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var imdbIDLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    
    //    var mtitle:String = ""
//    
//    var mposter:String = ""
//    var myear:String = ""
//    var mimdbID:String = ""
//    var mtype:String = ""
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
