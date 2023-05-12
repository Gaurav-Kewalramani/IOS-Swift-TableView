//
//  DummyTableViewCell.swift
//  LearniOS2
//
//  Created by Rohit Kumar on 11/10/22.
//

import UIKit

class DummyTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
