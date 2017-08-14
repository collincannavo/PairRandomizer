//
//  PairTableViewCell.swift
//  PairRandomizer
//
//  Created by Collin Cannavo on 7/20/17.
//  Copyright © 2017 Collin Cannavo. All rights reserved.
//

import UIKit

class PairTableViewCell: UITableViewCell {

    @IBOutlet weak var personLabel2: UILabel!
    @IBOutlet weak var personLabel1: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
