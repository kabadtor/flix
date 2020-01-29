//
//  MovieDetailsViewController.swift
//  flix
//
//  Created by Karla on 1/28/20.
//  Copyright © 2020 Karla. All rights reserved.
//

import UIKit
import AlamofireImage

class MovieDetailsViewController: UIViewController {
    
    var movie: [String:Any]!
    
    @IBOutlet weak var backdropView: UIImageView!
    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var titleLable: UILabel!
    @IBOutlet weak var synopsisLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLable.text = movie["title"] as! String
        titleLable.sizeToFit()
        
        synopsisLabel.text = movie["overview"] as! String
        synopsisLabel.sizeToFit()
        let baseUrl = "https://image.tmdb.org/t/p/w185"
        let posterPath = movie["poster_path"] as! String
        let posterURL = URL(string: baseUrl + posterPath)
        posterView.af_setImage(withURL: posterURL!)
        let backdropPath = movie["backdrop_path"] as! String
           
        let backdropURL = URL(string: "https://image.tmdb.org/t/p/w780" + backdropPath)
        
        backdropView.af_setImage(withURL: backdropURL!)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
