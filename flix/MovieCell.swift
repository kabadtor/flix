//
//  MovieCell.swift
//  flix
//
//  Created by Karla on 1/21/20.
//  Copyright © 2020 Karla. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell {

    

    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var synopsisLabel: UILabel!
    
    @IBOutlet weak var posterView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
