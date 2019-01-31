//
//  FruitTableViewCell.swift
//  Promo
//
//  Created by Hay Dane on 1/29/19.
//  Copyright © 2019 Hay Dane. All rights reserved.
//

import UIKit

class FruitTableViewCell: UITableViewCell {

    @IBOutlet weak var lblFruitName: UILabel!
    @IBOutlet weak var imgFruit: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
