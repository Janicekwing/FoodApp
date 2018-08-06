//
//  TableCell.swift
//  SearchBar
//
//  Created by Janice He on 8/6/18.
//  Copyright © 2018 Janice He. All rights reserved.
//

import UIKit

class TableCell: UITableViewCell {

    @IBOutlet weak var foodImage: UIImageView!
    
    @IBOutlet weak var dishName: UILabel!
    
    @IBOutlet weak var foodType: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
