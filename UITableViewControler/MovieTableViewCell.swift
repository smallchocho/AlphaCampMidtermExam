//
//  ResturantTableViewCell.swift
//  UITableViewControler
//
//  Created by Justin Huang on 2016/9/22.
//  Copyright © 2016年 Justin Huang. All rights reserved.
//

import UIKit

class RestaurantTableViewCell: UITableViewCell {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var thumbnailImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
