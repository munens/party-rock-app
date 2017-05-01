//
//  PartyCell.swift
//  party-rock-app
//
//  Created by Munene Kaumbutho on 2017-05-01.
//  Copyright © 2017 Munene Kaumbutho. All rights reserved.
//

import UIKit

class PartyCell: UITableViewCell {

    @IBOutlet weak var cellImageView: UIImageView!
    @IBOutlet weak var cellLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    /*
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }*/
    
    func updateUI(model: PartyRockModel){
        cellLabel.text = model.videoTitle
        /* TODO: Set Image View url below: */
    }

}
